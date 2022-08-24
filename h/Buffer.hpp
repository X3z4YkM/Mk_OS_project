//
// Created by os on 8/10/22.
//

#ifndef OSPROJECT_BUFFER_HPP
#define OSPROJECT_BUFFER_HPP
#include "_sem.hpp"

#define BUFFER_SIZE 256
class _Buffer{
public:
    void* operator new (size_t size){return __mem_alloc(size);}
    void operator delete (void*ptr){ __mem_free(ptr);}

    _Buffer();
    _Buffer(int cap);
    ~_Buffer();

    char get();
    void sys_put(char c);
    char sys_get();
    int retSize()const {return size;}
    bool isEmpty()const {return size==0?true: false;}

private:
    sem_t mutexE,mutexF, empty,full;
    char buffer[BUFFER_SIZE];
    int size, head, tail, slot;
    friend class Riscv;

};
#endif //OSPROJECT_BUFFER_HPP
