//
// Created by os on 8/5/22.
//

#include "../h/_sem.hpp"
#include "../lib/mem.h"
#include "../h/print.hpp"
void* _sem::operator new(size_t size) {
    return __mem_alloc(size);
}
void _sem::operator delete(void *ptr)  {
    __mem_free(ptr);
}
_sem::_sem(sem_t *handle, unsigned  init) {
    *handle=this;
    val=init;
    ended=0;
    waitingMy =  new MyWaitList();
}
int _sem::close() {
    if(ended==1) return -1;
    ended=1;
    val=0;
    while(!waitingMy->isEmpty()){
      TCB * tcb = waitingMy->removeFirst();
        tcb->siganl();
    }
    return 0;
}
int _sem::wait() {

    if(ended==1)return -1;
    if(--val<0)
    {

        waitingMy->add(TCB::running);
        TCB::wait();
    }

    if(ended)return -1;
    else return 0;
}
int _sem::signal() {
    if(ended==1)return -1;
    if(++val<=0){

        TCB * tcb = waitingMy->removeFirst();

        tcb->siganl();
    }
    return 0;
}