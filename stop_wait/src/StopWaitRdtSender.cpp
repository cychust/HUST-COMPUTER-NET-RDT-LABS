#include "../include/Base.h"
#include "../include/Global.h"
#include "../include/StopWaitRdtSender.h"

#define N 3;

StopWaitRdtSender::StopWaitRdtSender() : expectSequenceNumberSend(0), waitingState(false) {
    base = 0;
    expectSequenceNumberSend = 0;
    windowSize = N;
}


StopWaitRdtSender::~StopWaitRdtSender() {
}


bool StopWaitRdtSender::getWaitingState() {
    if (expectSequenceNumberSend <= base + windowSize) {
        waitingState = false;
    } else {
        waitingState = true;
    }
    return waitingState;
}


bool StopWaitRdtSender::send(Message &message) {


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
    return true;
}

void StopWaitRdtSender::receive(Packet &ackPkt) {

//    if (this->waitingState == true) {
    int checkSum = pUtils->calculateCheckSum(ackPkt);
    if (checkSum == ackPkt.checksum) {
        pUtils->printPacket("cycycyc发送方收到确认", ackPkt);

        if (this->packets.empty()) {
            return;
        }
        list<Packet>::iterator j;
        for (j = this->packets.begin(); j != this->packets.end(); ++j) {
            if ((*j).seqnum == ackPkt.acknum) {
                break;
            }
        }
        if (j == this->packets.end())
            return;
        int i = 0;
        if (ackPkt.acknum <= this->packets.back().seqnum) {
            i = this->packets.size() - (this->packets.back().seqnum - ackPkt.acknum);
        } else {
            i = ackPkt.acknum - this->packets.front().seqnum + 1;

        }
        this->base += i;
        while (i--) {
            this->packets.pop_front();
        }
        pUtils->printPacket("发送方正确收到确认", ackPkt);
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

void StopWaitRdtSender::timeoutHandler(int seqNum) {
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

}
