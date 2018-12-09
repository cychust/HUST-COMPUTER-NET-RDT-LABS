//
// Created by cyc on 18-12-4.
//

#ifndef STOP_WAIT_SRRECEIVER_H
#define STOP_WAIT_SRRECEIVER_H

#include "../include/RdtReceiver.h"

class SRReceiver : public RdtReceiver {
private:
    int expectSequenceNumberRcvd;    // 期待收到的下一个报文序号
    Packet lastAckPkt;                //上次发送的确认报文

//	int N;

    int ack[3];
    int baseAck;
    Message messages[3];

public:
    SRReceiver();

    virtual ~SRReceiver();

public:

    void receive(Packet &packet);    //接收报文，将被NetworkService调用
};

#endif //STOP_WAIT_SRRECEIVER_H
