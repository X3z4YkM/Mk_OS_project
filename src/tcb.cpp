//
// Created by os on 7/30/22.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/globals.hpp"

uint64 TCB::timeSliceCounter=0;
TCB *TCB::running= nullptr;

int TCB::idS=0;
TCB *TCB::initThreadWithRun(Body body,void*arg,uint64*stack) {
    TCB*tcb= new TCB(body,arg,stack);
    tcb->status.delAll();
    tcb->status.setReady();
    Scheduler::put(tcb);
    return tcb;
}
int TCB::start() {

    if(!status.getCreated()) return -1;
    status.delAll();
    status.setReady();
    Scheduler::put(this);
    return 0;
}
TCB* TCB::initThreadWithNoRun(Body body, void *arg, uint64 *stack) {
    return new TCB(body,arg,stack);
}

void TCB::dispatch(){

    TCB* old= running;
    if(old->status.getRunning()) {
        old->status.delAll();
        old->status.setReady();
        Scheduler::put(old);
    }
    running = Scheduler::get();
    if(running){
        running->status.delAll();
        running->status.setRunning();
    }else{
        running=Idle::getIdle();
    }
    Riscv::Rest_Priv(TCB::running->status.getSystematic());
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {

    Riscv::popSppSpie();
    running->body(running->arg);
    thread_exit();
}

int TCB::exit() {
    if(!running->status.getRunning())return -1;
    running->status.delAll();
    running->status.setFinished();
    dispatch();
    return 0;
}

int TCB::wait() {
    if(!running->status.getRunning())return -1;
    running->status.delAll();
    running->status.setWaiting();
    dispatch();
    return 0;
}
int TCB::siganl() {
    if(!status.getWaiting())return -1;
    status.delAll();
    status.setReady();
    Scheduler::put(this);
    return 0;
}

int TCB::sleep(time_t tm) {
    if(!running->status.getRunning())return -1;

        running->status.delAll();
        running->status.setSleeping();
    StruLisBuf::timelist->add(running, tm);
        dispatch();
        return 0;

}
int TCB::wakeUp() {
    {
        if(!status.getSleeping())return -1;
        status.delAll();
        status.setReady();
        Scheduler::put(this);
        return 0;
    }
}
