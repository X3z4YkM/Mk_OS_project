//
// Created by os on 7/30/22.
//

#ifndef OSPROJECT_GLOBALS_H
#define OSPROJECT_GLOBALS_H
#include "TimeList.hpp"
#include "Buffer.hpp"

const uint64 MEM_ALLOC = 0x01;
const uint64 MEM_FREE = 0x02;
const uint64 THREAD_START=0x10;
const uint64 THREAD_CREATE = 0x11;
const uint64 THREAD_EXIT = 0x12;
const uint64 THREAD_DISPATCH = 0x13;
const uint64 THREAD_PREPARE = 0x14;
const uint64 THREAD_DELETE = 0x15;
const uint64 SEM_OPEN = 0x21;
const uint64 SEM_CLOSE= 0x22;
const uint64 SEM_WAIT = 0x23;
const uint64 SEM_SIGNAL = 0x24;
const uint64 TIME_SLEEP = 0x31;
const uint64 GETC= 0x41;
const uint64 PUTC = 0x42;

const uint64 SOFTWARE =  0x8000000000000001UL;
const uint64 ECALL_S = 0x0000000000000009UL;
const uint64 ECALL_U = 0x0000000000000008UL;
const uint64 HARDWARE = 0x8000000000000009UL;

using Body = void(*)(void*);


#endif //OSPROJECT_GLOBALS_H
