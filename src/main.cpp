//
// Created by os on 7/20/22.
//
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/list.hpp"
#include "../h/userMain.hpp"
#include "../h/globals.hpp"
#include "../h/MemAlloc.hpp"
static volatile uint64 status = 1;
void user_wrapper(void*sem){

    printString("userMain() started\n");
    userMain();
    printString("userMain() finished\n");
     sem_signal((sem_t)sem);

    status=0;
}

int main(){
    MemAlloc::initMem();
    StruLisBuf::initLB();
    initializeTh();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    sem_t user_sem;
    sem_open(&user_sem, 0);

    thread_t user;
    thread_create(&user, user_wrapper, user_sem);
    sem_wait(user_sem);
    printString("[ENDING MAIN...]\n");
    while(StruLisBuf::bufferOut->retSize()>0){thread_dispatch();}
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);


    delete user;
    deinitializeTh();
    return 1;
}

