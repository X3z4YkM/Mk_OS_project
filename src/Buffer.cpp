//
// Created by os on 8/10/22.
//
#include "../h/Buffer.hpp"

_Buffer::_Buffer() {
    head=0;
    tail=0;
    slot=BUFFER_SIZE;
    size=0;

    new _sem(&empty,slot);
    new _sem(&full,0);
    new _sem(&mutexE,1);
    new _sem(&mutexF,1);
}
_Buffer::_Buffer(int cap) {
    size=0;
    head=0;
    tail=0;
    slot=cap;

    new _sem(&empty,size);
    new _sem(&full,0);
    new _sem(&mutexE,1);
    new _sem(&mutexF,1);
}
_Buffer::~_Buffer(){
    delete mutexF;
    delete mutexE;
    head=0;
    tail=0;
    delete empty;
    delete full;
    size=0;
    sem_close(empty);
    sem_close(full);
    sem_close(mutexF);
    sem_close(mutexE);
}

char _Buffer::get() {


    sem_wait(full);
    sem_wait(mutexF);

    char ret = buffer[head];
    head=(head+1)%slot;
    size--;

    sem_signal(mutexF);
    sem_signal(empty);

    return ret;
}

void _Buffer::sys_put(char c) {
    empty->wait();
    mutexE->wait();

    buffer[tail]=c;
    tail= (tail+1)%slot;
    size++;
    mutexE->signal();
    full->signal();

}
char _Buffer::sys_get() {
    full->wait();
    mutexF->wait();
    char ret = buffer[head];
    head=(head+1)%slot;
    size--;
    mutexF->signal();
    empty->signal();

    return ret;
}