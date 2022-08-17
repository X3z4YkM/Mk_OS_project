//
// Created by os on 7/20/22.
//

#ifndef OSPROJECT_SYSCALL_CPP_HPP
#define OSPROJECT_SYSCALL_CPP_HPP
#include "syscall_c.hpp"
void *operator new(size_t);
void operator delete(void*);
class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
    static  void ThreadWrapper(void*);

protected:
    Thread();
    virtual void run () {}
private:
    thread_t myHandle;
};
class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
public:
    static void wrapper(void*);
};
class Console {
public:
    static char getc ();
    static void putc (char);
};
#endif //OSPROJECT_SYSCALL_CPP_HPP
