//
// Created by cyc on 18-12-10.
//

#ifndef STOP_WAIT_TCPRECEIVER_H
#define STOP_WAIT_TCPRECEIVER_H


#include "../include/RdtReceiver.h"

class TCPReceiver : public RdtReceiver {
private:
    int expectSequenceNumberRcvd;    // 期待收到的下一个报文序号
    Packet lastAckPkt;                //上次发送的确认报文

//	int N;

public:
    TCPReceiver();

    virtual ~TCPReceiver();

public:

    void receive(Packet &packet);    //接收报文，将被NetworkService调用
};


#endif //STOP_WAIT_TCPRECEIVER_H
