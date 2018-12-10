#include "../include/Base.h"
#include "../include/Global.h"
#include "TCPSender.h"

#define N 3;

TCPSender::TCPSender() : expectSequenceNumberSend(0), waitingState(false) {
    base = 0;
    expectSequenceNumberSend = 0;
    windowSize = N;
    for (int i = 0; i < windowSize; ++i) {
        ack[i] = 0;
    }
    time = 0;
}


TCPSender::~TCPSender() {
}


bool TCPSender::getWaitingState() {
    if (expectSequenceNumberSend < base + windowSize) {
        waitingState = false;
    } else {
        waitingState = true;
    }
    return waitingState;
}


bool TCPSender::send(Message &message) {
    if (this->waitingState) { //发送方处于等待确认状态
        return false;
    }

    this->packetAck.acknum = 0;            //忽略
    this->packetAck.seqnum = this->expectSequenceNumberSend % 8;
    memcpy(this->packetAck.payload, message.data, sizeof(message.data));
    this->packetAck.checksum = pUtils->calculateCheckSum(this->packetAck);
    pUtils->printPacket("发送方发送报文", this->packetAck);
    pns->sendToNetworkLayer(RECEIVER, this->packetAck);
    if (base == expectSequenceNumberSend) {
        pns->startTimer(SENDER, Configuration::TIME_OUT, this->packetAck.seqnum);
    }
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



void TCPSender::receive(Packet &ackPkt) {

//    if (this->waitingState == true) {
    int checkSum = pUtils->calculateCheckSum(ackPkt);
    if (checkSum == ackPkt.checksum) {
        pUtils->printPacket("cycycyc发送方收到确认", ackPkt);
        if (this->packets.empty()) {
            std::cout<<"hhhhhhhhhhhhhhhhhh"<<std::endl;
            return;
        }
        list<Packet>::iterator j;
        for (j = this->packets.begin(); j != this->packets.end(); ++j) {
            if ((*j).seqnum == ackPkt.acknum) {
                break;
            }
        }
        if (j == this->packets.end()) {
            if (ackPkt.acknum == (this->base - 1) % 8) {
                time = time + 1;
                std::cout<<"sssssssssssssssssssssssssssssssssssssss"<<std::endl;
                if (time >= 3) {
                    pns->stopTimer(SENDER, this->base % 8);
                    pns->sendToNetworkLayer(RECEIVER, this->packets.front());
                    pns->startTimer(SENDER, Configuration::TIME_OUT, this->base % 8);
                    time = 0;
                }
                return;
            } else {
                std::cout<<"dddddddddddddddddddddddddddddddddddddd"<<std::endl;
                std::cout<<(this->base-1)%8<<"  "<<ackPkt.acknum<<std::endl;
                return;
            }
        }
        int i = 0;
        if (ackPkt.acknum <= this->packets.back().seqnum) {
            i = this->packets.size() - (this->packets.back().seqnum - ackPkt.acknum);
        } else {
            i = ackPkt.acknum - this->packets.front().seqnum + 1;

        }
        this->base += i;
        pns->stopTimer(SENDER, this->base % 8);
        pUtils->printPacket("发送方正确收到确认", ackPkt);

        this->base += i;

        while (i--) {
            this->packets.pop_front();
        }
        pns->startTimer(SENDER, Configuration::TIME_OUT, this->base % 8);
    }


}

void TCPSender::timeoutHandler(int seqNum) {
    //唯一一个定时器,无需考虑seqNum
//    pUtils->printPacket("发送方定时器时间到，重发上次发送的报文", this->packetWaitingAck);
    pns->stopTimer(SENDER, seqNum);                                        //首先关闭定时器
    pUtils->printPacket("发送方重新发送报文", this->packets.front());
    pns->sendToNetworkLayer(RECEIVER, this->packets.front());
    pns->startTimer(SENDER, Configuration::TIME_OUT, seqNum);
    std::cout << "???????????????????????????????????? ERROR" << std::endl;
}
