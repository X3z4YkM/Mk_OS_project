//
// Created by os on 7/20/22.
//

#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
#include "../h/MemAlloc.hpp"
using size_t = decltype(sizeof(0));

void * operator new(size_t sn)
{
    return __mem_alloc(sn);
}
void * operator new[](size_t sn) {
    return __mem_alloc(sn);
}

void *__mem_alloc(size_t size)
{
    return MemAlloc::alloc(size);
}

