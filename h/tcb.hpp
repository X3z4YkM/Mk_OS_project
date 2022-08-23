//
// Created by os on 7/30/22.
//

#ifndef OSPROJECT_TCB_HPP
#define OSPROJECT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "../lib/mem.h"
class TCB{

public:
    ~TCB(){delete[] stack;}
    using Body = void (*)(void*);
    static TCB *initThreadWithRun(Body body,void *arg,uint64*stack);
    static TCB *initThreadWithNoRun(Body body , void*arg,uint64*stack);
    static TCB* running;
    bool isFinished(){return status.getFinished();}
    uint64 getTimeSlice(){return timeSlice;}
    int start();
    int getID(){return myId;}
    void *operator new(size_t size) { return __mem_alloc(size); }
    void operator delete(void *ptr) { __mem_free(ptr); }
protected:
    static int idS;
    int myId;
    explicit TCB(Body body,void *arg, uint64 *stack):
    body(body),
    stack(stack),
    arg(arg),
    timeSlice(DEFAULT_TIME_SLICE)
    {
        myId=idS++;
        status.setCreated();
        context={(uint64) &threadWrapper,
                 (uint64) &stack[DEFAULT_STACK_SIZE]};
    }

    explicit TCB(){
        body= nullptr;
        stack= nullptr;
        arg= nullptr;
        myId=idS++;
        timeSlice=DEFAULT_TIME_SLICE;
        context = {0, 0};
        status.delAll();
        status.setRunning();
    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };
    struct Status{
        bool FINISHED= false;
        bool RUNNING = false;
        bool READY= false;
        bool CREATED= false;
        bool WAITING= false;
        bool SLEEPING= false;
        bool IDLE= false;
        bool SYSTEMATIC= false;
    public:
        void* operator new(size_t size){return __mem_alloc(size);}
        void operator delete (void* ptr){ __mem_free(ptr);}
        void setFinished(){FINISHED=true;}
        void delFinished(){FINISHED= false;}
        void setRunning(){RUNNING=true;}
        void delRunning(){RUNNING= false;}
        void setReady(){READY=true;}
        void delReady(){READY= false;}
        void setCreated(){CREATED=true;}
        void delCreated(){CREATED= false;}
        void setWaiting(){WAITING=true;}
        void delWaiting(){WAITING= false;}
        void setSleeping(){SLEEPING=true;}
        void delSleeping(){SLEEPING= false;}
        void setIdle(){IDLE=true;}
        void delIdle(){IDLE= false;}
        bool getFinished(){ return FINISHED;}
        bool getRunning(){ return RUNNING;}
        bool getReady(){return  READY;}
        bool getCreated(){return CREATED;}
        bool getWaiting(){return WAITING;}
        bool getSleeping(){return SLEEPING;}
        bool getIdle(){return IDLE;}
        void setSystematic(){ SYSTEMATIC= true;}
        bool getSystematic(){return  SYSTEMATIC;}
        void delAll(){
             FINISHED= false;
             RUNNING = false;
             READY= false;
             CREATED= false;
             WAITING= false;
             SLEEPING= false;
        }
    };
    Body body;
    uint64 *stack;
    Context context;
    Status status;
    void*arg;
    uint64 timeSlice;
    static void contextSwitch(Context *oldContext, Context *runningContext);
    static uint64 timeSliceCounter;
    static void dispatch();
    static void threadWrapper();
    static int sleep(time_t);
     static int exit();
     static int wait();
     int siganl();
     int wakeUp();

    //****Friend classes****
    friend class _sem;
    friend class Idle;
    friend class Kernel;
    friend class Output;
    friend  class TimeList;
    friend  class Riscv;
};


#endif //OSPROJECT_TCB_HPP
