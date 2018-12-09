

#include "../include/Base.h"
#include "../include/Global.h"
#include "../include/RdtSender.h"
#include "../include/RdtReceiver.h"
#include "../include/StopWaitRdtSender.h"
#include "../include/StopWaitRdtReceiver.h"
#include "SRSender.h"

#include "SRReceiver.h"

int main(int argc, char *argv[]) {
//	RdtSender *ps = new StopWaitRdtSender();
    SRSender *ps = new SRSender();
//    RdtReceiver *pr = new StopWaitRdtReceiver();
    SRReceiver *pr = new SRReceiver();
    pns->init();
    pns->setRtdSender(ps);
    pns->setRtdReceiver(pr);
    pns->setInputFile("/home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/input.txt");
    pns->setOutputFile("/home/cyc/usr/projects/Clion/computer_net/rdt_linux_student/rdt/stop_wait/output.txt");
    pns->start();

    delete ps;
    delete pr;
    delete pUtils;                                    //指向唯一的工具类实例，只在main函数结束前delete
    delete pns;                                        //指向唯一的模拟网络环境类实例，只在main函数结束前delete

    return 0;
}

