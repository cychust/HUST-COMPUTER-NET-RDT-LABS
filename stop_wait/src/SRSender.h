//
// Created by cyc on 18-12-4.
//

#ifndef STOP_WAIT_SRSENDER_H
#define STOP_WAIT_SRSENDER_H


#include "../include/RdtSender.h"

#include <list>

using namespace std;

class SRSender : public RdtSender {
private:
    int expectSequenceNumberSend;    // 下一个发送序号
    bool waitingState;                // 是否处于等待Ack的状态
    Packet packetWaitingAck;        //已发送并等待第一个Ack的数据包

    Packet packetAck;

    list<Packet> packets;

    int base;
    int windowSize;


public:

    bool getWaitingState();

    bool
    send(Message &message);                        //发送应用层下来的Message，由NetworkServiceSimulator调用,如果发送方成功地将Message发送到网络层，返回true;如果因为发送方处于等待正确确认状态而拒绝发送Message，则返回false
    void receive(Packet &ackPkt);                        //接受确认Ack，将被NetworkServiceSimulator调用
    void timeoutHandler(int seqNum);                    //Timeout handler，将被NetworkServiceSimulator调用

public:
    SRSender();

    virtual ~SRSender();
};


#endif //STOP_WAIT_SRSENDER_H
