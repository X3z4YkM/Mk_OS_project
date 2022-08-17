//
// Created by os on 8/16/22.
//

#include "../h/syscall_cpp.hpp"

Thread::Thread(void (*body)(void *), void *args) {
    thread_prepare(&myHandle,body,args);
}

Thread::~Thread()  {

    thread_delete(myHandle);

}

int Thread::start() {
    return thread_start(myHandle);
}
void Thread::dispatch() {
    thread_dispatch();
}
int Thread::sleep(time_t time) {
    return  time_sleep(time);
}
void Thread::ThreadWrapper(void * ptr) {
    ((Thread*)ptr)->run();
}
Thread::Thread() {
    thread_prepare(&myHandle,Thread::ThreadWrapper,this);
}