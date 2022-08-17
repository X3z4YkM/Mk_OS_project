//
// Created by os on 7/20/22.
//

#ifndef OSPROJECT_SYSCALL_C_H
#define OSPROJECT_SYSCALL_C_H
#include "../lib/hw.h"

//******MEMORY*****
void *mem_alloc(size_t size);
int mem_free(void*pointer);
//*************END_MEMORY**********


//******THREADS*********
class TCB;
typedef TCB* thread_t;
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);
int thread_start(thread_t handle);
int thread_exit();
int thread_prepare(thread_t* handle,void(*start_routine)(void*),void* arg);
void thread_dispatch();
void thread_delete(thread_t handle);
//********END_THREAD***********

//******SEM******
class _sem;
typedef _sem *sem_t;
int sem_open (
        sem_t* handle,
        unsigned init
);
int sem_close(sem_t handler);
int sem_wait(sem_t id);
int sem_signal(sem_t id);
//*********END_SEM*********
//************ELSE*****
typedef unsigned long time_t;
int time_sleep (time_t);
const int EOF = -1;

char getc ();
void putc (char);

#endif //OSPROJECT_SYSCALL_C_H


