//
// Created by os on 8/23/22.
//
#include "../h/globals.hpp"
_Buffer * StruLisBuf::bufferIn = nullptr;
_Buffer * StruLisBuf::bufferOut = nullptr;
TimeList * StruLisBuf::timelist = nullptr;
TCB *Idle::idle = nullptr;
TCB *Kernel::kernel = nullptr;
TCB *Output::output = nullptr;

TCB* Idle::getIdle() {
    if(!idle) {
        idle = initThreadWithNoRun(idleWrapper, nullptr, (uint64 *) __mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
        idle->status.delAll();
        idle->status.setIdle();
        idle->status.setSystematic();
    }
    return idle;
}
void Idle::idleWrapper(void*) {

    while(true){
        thread_dispatch();
    }
}

TCB* Kernel::getKernel() {
    if(kernel)return kernel;
    kernel=new TCB();

    kernel->status.setSystematic();
    running=kernel;
    return kernel;
}
TCB*Output::getOutputTh() {
    if(output)return output;
    output= initThreadWithRun(outputThWrapper, nullptr, (uint64*)__mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE));
    output->status.setSystematic();

    return output;
}
void Output::outputThWrapper(void *) {
    while(true){
        while (*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
            char inpChar = StruLisBuf::bufferOut->get();
            *((char*)CONSOLE_TX_DATA)=inpChar;
        }
    }
}

void deinitializeTh(){
Kernel::endSysThr();
Output::endSysThr();
Idle::endSysThr();
}
void initializeTh(){
    Kernel::getKernel();
    Idle::getIdle();
    Output::getOutputTh();
}