//
// Created by os on 8/5/22.
//

#ifndef OSPROJECT__SEM_HPP
#define OSPROJECT__SEM_HPP
#include "list.hpp"
#include "syscall_c.hpp"
#include "tcb.hpp"
#include "MyWaitList.hpp"
class _sem{
private:
    List<TCB>  waiting;
    MyWaitList *waitingMy;
    int val=0;
    int ended=0;
    int close();
    int wait();
    int signal();
    _sem(sem_t*handle,unsigned init);
    friend class Riscv;
    friend class _Buffer;
    ~_sem(){close();}
public:
    void* operator new(size_t size);
    void operator delete (void*ptr);
    int getVal(){return val;}
};


#endif //OSPROJECT__SEM_HPP
