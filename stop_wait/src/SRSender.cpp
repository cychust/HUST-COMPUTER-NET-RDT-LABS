#include "../include/Base.h"
#include "../include/Global.h"
#include "SRSender.h"

#define N 3;

SRSender::SRSender() : expectSequenceNumberSend(0), waitingState(false) {
    base = 0;
    expectSequenceNumberSend = 0;
    windowSize = N;
    for (int i = 0; i < windowSize; ++i) {
        ack[i] = 0;
    }
}


SRSender::~SRSender() {
}


bool SRSender::getWaitingState() {
    if (expectSequenceNumberSend < base + windowSize) {
        waitingState = false;
    } else {
        waitingState = true;
    }
    return waitingState;
}


bool SRSender::send(Message &message) {
    if (this->waitingState) { //发送方处于等待确认状态
        return false;
    }

    this->packetAck.acknum = 0;            //忽略
    this->packetAck.seqnum = this->expectSequenceNumberSend % 8;
    memcpy(this->packetAck.payload, message.data, sizeof(message.data));
    this->packetAck.checksum = pUtils->calculateCheckSum(this->packetAck);
    pUtils->printPacket("发送方发送报文", this->packetAck);
    pns->sendToNetworkLayer(RECEIVER, this->packetAck);

//    if (base == expectSequenceNumberSend) {
//        pns->startTimer(SENDER, Configuration::TIME_OUT, this->packetAck.seqnum);
//        this->packetWaitingAck.acknum = 0;
//        this->packetWaitingAck.seqnum = this->expectSequenceNumberSend % 8;
//        memcpy(this->packetWaitingAck.payload, message.data, sizeof(message.data));
//        this->packetWaitingAck.checksum = pUtils->calculateCheckSum(this->packetAck);
//    }

    pns->startTimer(SENDER, Configuration::TIME_OUT, this->packetAck.seqnum);

    this->packets.push_back(this->packetAck); //备份便于重传
    expectSequenceNumberSend++;
    return true;

}


//
//////////////////
//
//
//1 2 3 4 5 6
//  2 3 4 5 6 7
/////////////////



void SRSender::receive(Packet &ackPkt) {

//    if (this->waitingState == true) {
    int checkSum = pUtils->calculateCheckSum(ackPkt);
    if (checkSum == ackPkt.checksum) {
        pUtils->printPacket("cycycyc发送方收到确认", ackPkt);

        if (this->packets.empty()) {
            return;
        }

        if (this->packets.back().seqnum > this->packets.front().seqnum) {
            if (ackPkt.acknum > this->packets.back().seqnum || ackPkt.acknum < this->packets.front().seqnum)
                return;
        }
        if (this->packets.back().seqnum < this->packets.front().seqnum) {
            if ((ackPkt.acknum < this->packets.front().seqnum) && (
                    ackPkt.acknum > this->packets.back().seqnum))             //接收到之前的ack;
                return;
        }
        if (this->packets.size() == 1) {
            if (ackPkt.acknum != this->packets.front().seqnum)
                return;
        }
        pns->stopTimer(SENDER, ackPkt.acknum);

        int i = 0;
        if (ackPkt.acknum <= this->packets.back().seqnum) {
            i = this->packets.size() - (this->packets.back().seqnum - ackPkt.acknum);
            std::cout << "i= " << i << std::endl;
        } else {
            i = ackPkt.acknum - this->packets.front().seqnum + 1;
            std::cout << "i= " << i << std::endl;
            std::cout << "i= " << packets.front().seqnum << "  " << ackPkt.acknum << std::endl;
        }

        pUtils->printPacket("发送方正确收到确认", ackPkt);
        ack[i - 1] = 1;
        int j;
        for (j = 0; j < windowSize; ++j) {
            if (ack[j] == 0) {
                break;
            } else {
                ack[j] = 0;
            }
        }
        if (j==0)
            return;

        this->base += (j);

        for (int k = j; k < windowSize; ++k) {
            ack[k - j] = ack[k];
            ack[k] = 0;
        }

//        std::cout << i << std::endl;
//        std::cout << packets.size() << std::endl;
        while (j--) {
            this->packets.pop_front();
        }
//        if (base != expectSequenceNumberSend) {
//            pns->stopTimer(SENDER, (this->base - 1) % 8);
//            pns->startTimer(SENDER, Configuration::TIME_OUT, ((this->base) % 8));      //重新开启定时器
//        } else {
//            pns->stopTimer(SENDER, (this->base - 1) % 8);
//        }

    }


}

void SRSender::timeoutHandler(int seqNum) {
    //唯一一个定时器,无需考虑seqNum
//    pUtils->printPacket("发送方定时器时间到，重发上次发送的报文", this->packetWaitingAck);
    pns->stopTimer(SENDER, seqNum);                                        //首先关闭定时器
    for (auto i = this->packets.begin(); i != this->packets.end(); ++i) {    //超时重传全部
        if ((*i).seqnum == seqNum) {
            pUtils->printPacket("发送方重新发送报文", *i);
            pns->sendToNetworkLayer(RECEIVER, *i);
            pns->startTimer(SENDER, Configuration::TIME_OUT, ((*i).seqnum));
            return;
        }
    }
    std::cout << "???????????????????????????????????? ERROR" << std::endl;
}
