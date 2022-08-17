//
// Created by os on 8/17/22.
//

#include "../h/syscall_cpp.hpp"
Semaphore::Semaphore(unsigned int inits) {
    sem_open(&myHandle,inits);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}
int Semaphore::wait() {
    return sem_wait(myHandle);
}
int Semaphore::signal() {
    return sem_signal(myHandle);
}