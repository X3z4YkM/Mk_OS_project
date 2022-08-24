//
// Created by os on 8/5/22.
//

#ifndef OSPROJECT_TIMELIST_HPP
#define OSPROJECT_TIMELIST_HPP
#include "tcb.hpp"

class TimeList{
public:
    struct ElemTime{
        TCB*tcb = nullptr;
        time_t time;
        ElemTime(TCB*tcbToAdd,time_t timeToAdd){
            tcb = tcbToAdd;
            time=timeToAdd;
        }
        void* operator new (size_t size){return __mem_alloc(size);}
        void operator delete (void* ptr){__mem_free(ptr);}
    };
private:
    static time_t currentTime;
     List<ElemTime>list_Time;
    static time_t currentTimePassed;
public:

    ~TimeList(){
        currentTime=0;
        currentTimePassed=0;
    }
    void* operator new (size_t size){return __mem_alloc(size);}
    void operator delete (void* ptr){__mem_free(ptr);}
    void add(TCB*tcb,time_t time);
    void tick();
    bool finished();
    bool isEmpty();
    TCB* popFront();
    TCB * popBack();
    TCB* PeekFront();
    TCB*PeekLast();
    int size();


};

#endif //OSPROJECT_TIMELIST_HPP
