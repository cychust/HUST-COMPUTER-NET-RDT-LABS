#include "../include/Base.h"
#include "../include/Global.h"
#include "SRSender.h"

#define N 3;

SRSender::SRSender() : expectSequenceNumberSend(0), waitingState(false) {
    base = 0;
    expectSequenceNumberSend = 0;
    windowSize = N;
}


SRSender::~SRSender() {
}


bool SRSender::getWaitingState() {
    if (expectSequenceNumberSend <= base + windowSize) {
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

    if (base == expectSequenceNumberSend) {
        pns->startTimer(SENDER, Configuration::TIME_OUT, this->packetAck.seqnum);
        this->packetWaitingAck.acknum = 0;
        this->packetWaitingAck.seqnum = this->expectSequenceNumberSend % 8;
        memcpy(this->packetWaitingAck.payload, message.data, sizeof(message.data));
        this->packetWaitingAck.checksum = pUtils->calculateCheckSum(this->packetAck);
    }

    this->packets.push_back(this->packetAck); //备份便于重传
    expectSequenceNumberSend++;
//    this->waitingState = false;

    return true;

//
//    this->packetWaitingAck.acknum = -1; //忽略该字段
//    this->packetWaitingAck.seqnum = this->expectSequenceNumberSend;
//    this->packetWaitingAck.checksum = 0;
//    memcpy(this->packetWaitingAck.payload, message.data, sizeof(message.data));
//    this->packetWaitingAck.checksum = pUtils->calculateCheckSum(this->packetWaitingAck);
//    pUtils->printPacket("发送方发送报文", this->packetWaitingAck);
//    pns->startTimer(SENDER, Configuration::TIME_OUT, this->packetWaitingAck.seqnum);            //启动发送方定时器
//    pns->sendToNetworkLayer(RECEIVER,
//                            this->packetWaitingAck);                                //调用模拟网络环境的sendToNetworkLayer，通过网络层发送到对方
//     /   this->waitingState = true;                                                                                    //进入等待状态
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
        int i = 0;
        if (ackPkt.acknum <= this->packets.back().seqnum) {
            i = this->packets.size() - (this->packets.back().seqnum - ackPkt.acknum);
            std::cout << "i= " << i << std::endl;
        } else {
            i = ackPkt.acknum - this->packets.front().seqnum + 1;
            std::cout << "i= " << i << std::endl;
            std::cout << "i= " << packets.front().seqnum << "  " << ackPkt.acknum << std::endl;
        }
        this->base += i;
        std::cout << i << std::endl;
        std::cout << packets.size() << std::endl;
        while (i--) {
            this->packets.pop_front();
        }
        pUtils->printPacket("发送方正确收到确认", ackPkt);
//        this->waitingState = false;                   //窗口此时没满
        if (base != expectSequenceNumberSend) {
//            this->waitingState = true;
            pns->stopTimer(SENDER, (this->base - 1) % 8);
            pns->startTimer(SENDER, Configuration::TIME_OUT, ((this->base) % 8));      //重新开启定时器
        } else {
            pns->stopTimer(SENDER, (this->base - 1) % 8);
//            this->waitingState = false;
        }

    }


}

void SRSender::timeoutHandler(int seqNum) {
    //唯一一个定时器,无需考虑seqNum
//    pUtils->printPacket("发送方定时器时间到，重发上次发送的报文", this->packetWaitingAck);
    pns->stopTimer(SENDER, seqNum);                                        //首先关闭定时器
    int j = 0;
    for (auto i = this->packets.begin(); i != this->packets.end(); ++i) {    //超时重传全部
        pUtils->printPacket("发送方重新发送报文", *i);
        pns->sendToNetworkLayer(RECEIVER, *i);
        if (i == this->packets.begin()) {
            pns->startTimer(SENDER, Configuration::TIME_OUT, ((*i).seqnum));
        }
    }
//    pns->startTimer(SENDER, Configuration::TIME_OUT, this->base);            //重新启动发送方定时器
//    pns->sendToNetworkLayer(RECEIVER, this->packetWaitingAck);            //重新发送数据包



}
