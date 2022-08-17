//
// Created by os on 7/20/22.
//
#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
void operator delete(void *np) noexcept
{
     __mem_free(np);
}
void  operator delete[](void *np)noexcept
{
     __mem_free(np);
}