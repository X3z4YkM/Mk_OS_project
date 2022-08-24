//
// Created by os on 7/20/22.
//
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
#include "../h/MemAlloc.hpp"
void operator delete(void *np) noexcept
{
     __mem_free(np);
}
void  operator delete[](void *np)noexcept
{
     __mem_free(np);
}
int __mem_free(void *ptr)
{
    return MemAlloc::mem_free(ptr);
}