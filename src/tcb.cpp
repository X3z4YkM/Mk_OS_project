//
// Created by os on 7/30/22.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../h/globals.hpp"
#include "../lib/mem.h"
#include "../h/print.hpp"
#include "../h/TimeList.hpp"
uint64 TCB::timeSliceCounter=0;
TCB *TCB::running= nullptr;
TCB *TCB::idle = nullptr;
TCB *TCB::kernel= nullptr;
TCB *TCB::outputTh= nullptr;
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
TCB* TCB::getKernel() {
    if(kernel)return kernel;
   kernel=new TCB();

    kernel->status.setSystematic();
    running=kernel;
    return kernel;
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
        running=idle;
    }
    Riscv::Rest_Priv(TCB::running->status.getSystematic());
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {

    Riscv::popSppSpie();
    running->body(running->arg);
    thread_exit();
}


TCB* TCB::getIdle() {

    if(!idle) {

        idle = initThreadWithNoRun(idleWrapper, nullptr, (uint64 *) __mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
        idle->status.delAll();
        idle->status.setIdle();
        idle->status.setSystematic();
    }
    return idle;
}

void TCB::idleWrapper(void*) {

    while(true){

        thread_dispatch();

    }

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
int TCB::releaseWaiting() {
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
        Riscv::timelist->add(running, tm);
        dispatch();
        return 0;

}
TCB * TCB::getOutputTh() {
    if(outputTh)return outputTh;
    outputTh= initThreadWithRun(outputThWrapper, nullptr, (uint64*)__mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    outputTh->status.setSystematic();

    return outputTh;
}
void TCB::outputThWrapper(void *) {
    while(true){
        while (*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
            char inpChar = Riscv::bufferOut->get();
            *((char*)CONSOLE_TX_DATA)=inpChar;
        }
    }
}