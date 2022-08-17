//
// Created by os on 7/20/22.
//

#include "../h/syscall_c.hpp"
#include "../h/globals.hpp"
#include "../lib/mem.h"
#include "../h/print.hpp"
//********THREAD***********8
int thread_create(   thread_t* handle,
                     void(*start_routine)(void*),
                     void* arg)
{
    if(!handle) return -11;
    void* stack =   __mem_alloc(sizeof(uint64)*DEFAULT_STACK_SIZE);
    if(!stack)return -12;

    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile ("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile ("mv a3, %0" : : "r" (arg));
    __asm__ volatile ("mv a4, %0" : : "r" (stack));
    __asm__ volatile ("mv a0, %0" : : "r" (THREAD_CREATE));

    __asm__ volatile ("ecall");
    uint64 volatile retVal;
    __asm__ volatile ("mv %0, a0" : "=r" (retVal));
    if(retVal ==0){
        return 0;
    }else return -13;
}

int thread_exit(){

    __asm__ volatile ("mv a0, %0" : : "r" (THREAD_EXIT));
    __asm__ volatile ("ecall");
    uint64 volatile retVal;
    __asm__ volatile ("mv %0, a0" : "=r" (retVal));
    if(retVal==0){return 0;}
    else return -21;
}

void thread_dispatch(){

    __asm__ volatile ("mv a0, %0 "::"r"(THREAD_DISPATCH));
    __asm__ volatile ("ecall");
}
int thread_start(thread_t handler){
    __asm__ volatile ("mv a1, %0"::"r"(handler));
    __asm__ volatile ("mv a0, %0"::"r"(THREAD_START));
    __asm__ volatile ("ecall");
    uint64 retVal;
    __asm__ volatile ("mv %0, a0" : "=r"(retVal));
  if(retVal==0)return 0;
  else return -10;
}
int thread_prepare(   thread_t* handle,
                       void(*start_routine)(void*),
                       void* arg)
{
    if(!handle) return -114;
    void* stack =   __mem_alloc(sizeof(uint64)*DEFAULT_STACK_SIZE);
    if(!stack)return -112;

    __asm__ volatile ("mv a4, %0" : : "r" (stack));
    __asm__ volatile ("mv a3, %0" : : "r" (arg));
    __asm__ volatile ("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile ("mv a0, %0" : : "r" (THREAD_PREPARE));

    __asm__ volatile ("ecall");
    uint64 volatile retVal;
    __asm__ volatile ("mv %0, a0" : "=r" (retVal));
    if(retVal ==0){
        return 0;
    }else return -114;
}
void thread_delete(thread_t handel){
    __asm__ volatile ("mv a1, %0"::"r"(handel));
    __asm__ volatile ("mv a0, %0"::"r"(THREAD_DELETE));
    __asm__ volatile ("ecall");
}
//*******MEMORY**********

void *mem_alloc(size_t size)
{
    size_t BlocckSize;
    if(size % MEM_BLOCK_SIZE==0){
        BlocckSize=size/MEM_BLOCK_SIZE;
    }else{
        BlocckSize= (size/MEM_BLOCK_SIZE)+1;
    }
    __asm__ volatile ("mv a1, %0" : : "r"(BlocckSize));
    __asm__ volatile ("mv a0, %0 "::"r"(MEM_ALLOC));
    __asm__ volatile ("ecall");
    uint64 retVal=0;
        __asm__ volatile ("mv %0, a0" : "=r"(retVal));
        return (void*)retVal;
}

int mem_free(void*pointer)
{
    if(pointer== nullptr)return 0;
    __asm__ volatile ("mv a1, %0" : : "r"(pointer));
    __asm__ volatile ("mv a0, %0 "::"r"(MEM_FREE));
    __asm__ volatile ("ecall");
    uint64 volatile retVal=0;
    __asm__ volatile ("mv %0, a0 " : "=r" (retVal));
    if(retVal==0)return 0;
    else return -1;
}
//*******SEMAPHORE*********
int sem_open(  sem_t* handle,
               unsigned init){
    __asm__ volatile("mv a3, %0"::"r"(handle));
    __asm__ volatile("mv a2, %0"::"r"(init));
    __asm__ volatile("mv a0, %0"::"r"(SEM_OPEN));
    __asm__ volatile("ecall");
    uint64 retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    if(retVal==0)return 0;
    else return -21;
}
int sem_close(sem_t handler){
    __asm__ volatile("mv a1, %0"::"r"(handler));
    __asm__ volatile("mv a0, %0"::"r"(SEM_CLOSE));
    __asm__ volatile("ecall");
    uint64 retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    if(retVal==0)return 0;
    else return -22;
}

int sem_wait(sem_t id){
    __asm__ volatile("mv a1, %0"::"r"(id));
    __asm__ volatile("mv a0, %0"::"r"(SEM_WAIT));
    __asm__ volatile("ecall");
    uint64 retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    if(retVal==0)return 0;
    else return -22;
}
int sem_signal(sem_t id){
    __asm__ volatile("mv a1, %0"::"r"(id));
    __asm__ volatile("mv a0, %0"::"r"(SEM_SIGNAL));
    __asm__ volatile("ecall");

    uint64 retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    if(retVal==0)return 0;
    else return -22;
}

char getc(){
    __asm__ volatile("mv a0, %0"::"r"(GETC));
    __asm__ volatile("ecall");
    uint64  retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
   char ret= (char)retVal;
    return  ret;

}
void putc(char cha){
    __asm__ volatile("mv a1, %0"::"r"(cha));
    __asm__ volatile("mv a0, %0"::"r"(PUTC));
    __asm__ volatile("ecall");

}

int time_sleep(time_t time){
    __asm__ volatile("mv a1, %0"::"r"(time));
    __asm__ volatile("mv a0, %0"::"r"(TIME_SLEEP));
    __asm__ volatile("ecall");
    uint64  retVal;
    __asm__ volatile ("mv %0, a0":"=r"(retVal));
    if(retVal==0)return 0;
    else return -15;
}