//
// Created by os on 8/5/22.
//
#include "../h/TimeList.hpp"
#include "../test/printing.hpp"
time_t TimeList::currentTime = 0;

time_t TimeList::currentTimePassed = 0;

int TimeList::size() {
     return list_Time.size();
}
void TimeList::add(TCB *tcb, time_t time) {
    time+=currentTime;
    ElemTime * elem = new ElemTime(tcb,time);
    list_Time.add_by_time(elem);
    //printInt(list_Time.size());

}
bool TimeList::finished() {
    ElemTime * elem =  list_Time.peekFirst();
    return (list_Time.size() > 0 &&
            elem->time <= currentTime);
}
bool TimeList::isEmpty() {
    if(list_Time.size()<=0)return true;
    else
        return false;
}

TCB* TimeList::popFront() {
    return list_Time.removeFirst()->tcb;
}
TCB* TimeList::popBack() {
    if(isEmpty())return nullptr;
    return list_Time.removeLast()->tcb;
}
TCB* TimeList::PeekFront() {
    if(isEmpty())return nullptr;
    return list_Time.peekFirst()->tcb;
}
TCB* TimeList::PeekLast() {
    if(isEmpty())return nullptr;
    return  list_Time.peekLast()->tcb;
}

void TimeList::tick() {
    currentTimePassed++;
    if(list_Time.size()==0)currentTime=0;
    else currentTime+=1;
    while(list_Time.size()>0 && list_Time.peekFirst()->time<=currentTime){
        TCB* tcb = list_Time.removeFirst()->tcb;
        tcb->wakeUp();
    }
}