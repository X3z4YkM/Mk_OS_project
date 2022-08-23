//
// Created by os on 7/30/22.
//
#include "../h/riscv.hpp"
#include "../h/globals.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"
#include "../h/tcb.hpp"
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
#include "../h/_sem.hpp"


void Riscv::popSppSpie() {
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::Rest_Priv(bool status) {
    if(status){
        ms_sstatus(SSTATUS_SPP);
    }else{
        mc_sstatus(SSTATUS_SPP);
    }
}
void Riscv::handleSupervisorTrap() {

    uint64 args[5];
    __asm__ volatile ("mv %0, a4" : "=r" (args[4]));
    __asm__ volatile ("mv %0, a3" : "=r" (args[3]));
    __asm__ volatile ("mv %0, a2" : "=r" (args[2]));
    __asm__ volatile ("mv %0, a1" : "=r" (args[1]));
    __asm__ volatile ("mv %0, a0" : "=r" (args[0]));
    uint64 scause = r_scause();

    if(scause==SOFTWARE){

        //interrupt: yes,  couse code: supervisor software interrupt timer
        TCB::timeSliceCounter++;
        StruLisBuf::timelist->tick();
        if(TCB::timeSliceCounter >= TCB::running->timeSlice) {

            uint64 sepc = r_sepc();
            TCB::timeSliceCounter=0;
            TCB::dispatch();
            w_sepc(sepc);

        }

        mc_sip(SIP_SSIP);

    }else if(scause==HARDWARE){

        //interrupt: yes,  couse code: supervisore external interrupt console
        int irq = plic_claim();

        if(irq==10){
            while (*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
                char inpChar = (*(char*)CONSOLE_RX_DATA);
                StruLisBuf::bufferIn->sys_put(inpChar);
            }

        }

        plic_complete(irq);

    } else if(scause==ECALL_S || scause==ECALL_U){

            uint64 sepc = r_sepc()+4;
            uint64 volatile retVal=0;
        thread_t * handler;
        sem_t*handleSem;
        sem_t handleSemSem;
        sem_t volatile id;
        thread_t volatile thHandl;
        size_t  volatile size;
        char c;
        time_t time;
        uint64 retchar;
        void * pointerForDealoc;
        unsigned init;
        switch (args[0]) {

            case THREAD_CREATE:
            handler = (thread_t*)args[1];
            *handler= TCB::initThreadWithRun((Body)args[2],(void*)args[3],(uint64*)args[4]);

                break;
            case THREAD_PREPARE:
                    handler = (thread_t*)args[1];
                    *handler= TCB::initThreadWithNoRun((Body)args[2],(void*)args[3],(uint64*)args[4]);

                    break;
            case THREAD_START:
                thHandl=(thread_t)args[1];
                retVal= thHandl->start();
                break;
            case THREAD_EXIT:
                retVal=TCB::exit();
                break;
            case THREAD_DISPATCH:
                TCB::dispatch();
                break;
            case THREAD_DELETE:
                thHandl = (thread_t)args[1];
                while(!thHandl->status.getFinished()){
                    TCB::dispatch();

                }
                delete thHandl;
            case THREAD_JOIN:
                thHandl = (thread_t)args[1];
                while(!thHandl->status.getFinished()){
                    TCB::dispatch();
                }
                break;
            case THREAD_GETID:
                thHandl = (thread_t)args[1];
                retVal = thHandl->getID();
                break;
            case MEM_FREE:
                    pointerForDealoc = (void*)args[1];
                    retVal=(uint64)__mem_free(pointerForDealoc);
                break;
            case MEM_ALLOC:
                    size = args[1]*MEM_BLOCK_SIZE;
                    retVal = (uint64) __mem_alloc(size);
                break;
            case SEM_OPEN:
                handleSem = (sem_t*)args[3];
                init = (unsigned)args[2];
                new _sem(handleSem,init);
                retVal=1;

                break;
            case SEM_CLOSE:
                handleSemSem = (sem_t)args[1];
                handleSemSem->close();
                retVal=1;
                break;
            case SEM_WAIT:
                id = (sem_t)args[1];
                retVal=id->wait();

                break;
            case SEM_SIGNAL:
                id = (sem_t)args[1];
                retVal=id->signal();
                break;
            case PUTC:
                 c = (char)args[1];
                StruLisBuf::bufferOut->sys_put(c);
                break;
            case GETC:
               retchar = StruLisBuf::bufferIn->sys_get();
                retVal=(uint64)retchar;

                break;
            case TIME_SLEEP:
                time = (time_t)args[1];
                    retVal = TCB::sleep(time);
                break;
        }
              retValueRISV(retVal);
               w_sepc(sepc);


    }else{
        uint64 sepc = r_sepc();
        uint64 stval = r_stval();
        uint64  sstatus = r_sstatus();
        printString("scause code: ");
        printInt(scause);
        printString("\n");

        printString("sepc code: ");
        printInt(sepc);
        printString("\n");


        printString("stval code: ");
        printInt(stval);
        printString("\n");

        printString("sstatus code: ");
        printInt(sstatus);
        printString("\n");
    }





}