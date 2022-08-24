//
// Created by os on 8/24/22.
//

#ifndef MK_OS_PROJECT_MEMALLOC_HPP
#define MK_OS_PROJECT_MEMALLOC_HPP
#include "../lib/hw.h"
#include "../h/Descriptor.hpp"
#define HEAP_SIZE ((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - MEM_BLOCK_SIZE)


class MemAlloc {
public:
    static Descriptor*memalloc,*memfree;
    static void initMem();
    static int mem_free(void*ptr);
    static void* alloc(size_t size);
};


#endif //MK_OS_PROJECT_MEMALLOC_HPP
