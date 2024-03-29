//
// Created by cyc on 18-12-4.
//

#include "../include/Base.h"
#include "../include/Global.h"
#include "SRReceiver.h"


SRReceiver::SRReceiver() : expectSequenceNumberRcvd(0) {

    lastAckPkt.acknum = 0; //初始状态下，上次发送的确认包的确认序号为-1，使得当第一个接受的数据包出错时该确认报文的确认号为-1
    lastAckPkt.checksum = 0;
    lastAckPkt.seqnum = 0;    //忽略该字段
    for (int i = 0; i < Configuration::PAYLOAD_SIZE; i++) {
        lastAckPkt.payload[i] = '.';
    }
    lastAckPkt.checksum = pUtils->calculateCheckSum(lastAckPkt);

    baseAck = 0;

    for (int j = 0; j < 3; ++j) {
        ack[j] = 0;
//        messages[j] = NULL;
    }

}


SRReceiver::~SRReceiver() {
}

void SRReceiver::receive(Packet &packet) {
    //检查校验和是否正确
    int checkSum = pUtils->calculateCheckSum(packet);

    //如果校验和正确，同时收到报文的序号等于接收方期待收到的报文序号一致
    if (checkSum == packet.checksum) {
        pUtils->printPacket("接收方正确收到发送方的报文", packet);


        //取出Message，向上递交给应用层
        Message msg;
        memcpy(msg.data, packet.payload, sizeof(packet.payload));
        lastAckPkt.acknum = packet.seqnum; //确认序号等于收到的报文序号
        lastAckPkt.checksum = pUtils->calculateCheckSum(lastAckPkt);
        pUtils->printPacket("接收方发送确认报文", lastAckPkt);
        pns->sendToNetworkLayer(SENDER, lastAckPkt);    //调用模拟网络环境的sendToNetworkLayer，通过网络层发送确认报文到对方



        int k = 0;
        for (k = 0; k < 3; ++k) {
            if ((baseAck + k) % 8 == packet.seqnum)
                break;
        }
        if (k == 3) {
            return;
        }

//        //取出Message，向上递交给应用层
//        Message msg;
//        memcpy(msg.data, packet.payload, sizeof(packet.payload));
//        lastAckPkt.acknum = packet.seqnum; //确认序号等于收到的报文序号
//        lastAckPkt.checksum = pUtils->calculateCheckSum(lastAckPkt);
//        pUtils->printPacket("接收方发送确认报文", lastAckPkt);
//        pns->sendToNetworkLayer(SENDER, lastAckPkt);    //调用模拟网络环境的sendToNetworkLayer，通过网络层发送确认报文到对方

//        int j;
//        j = packet.seqnum - baseAck % 8;
        messages[k] = msg;
        ack[k] = 1;
        int i;
        for (i = 0; i < 3; ++i) {
            if (ack[i] == 1) {
                pns->delivertoAppLayer(RECEIVER, messages[i]);
                ack[i] = 0;
//                pns->delivertoAppLayer(RECEIVER, msg);
            } else {
                break;
            }
        }
        if (i == 0)return;
        for (int j = i; j < 3; ++j) {
            ack[j - i] = ack[j];
            ack[j] = 0;
            messages[j - i] = messages[j];
        }
//        if (i == 3) {
//            for (int j = 0; j < 3; ++j) {
//                ack[j] = 0;
//            }
//        }
        baseAck += (i);
//        this->expectSequenceNumberRcvd++; //接收序号递增

    } else {
        if (checkSum != packet.checksum) {
            pUtils->printPacket("接收方没有正确收到发送方的报文,数据校验错误", packet);
        } else {
            pUtils->printPacket("接收方没有正确收到发送方的报文,报文序号不对", packet);
        }
//        pUtils->printPacket("接收方重新发送上次的确认报文", lastAckPkt);
//        pns->sendToNetworkLayer(SENDER, lastAckPkt);    //调用模拟网络环境的sendToNetworkLayer，通过网络层发送上次的确认报文

    }
}