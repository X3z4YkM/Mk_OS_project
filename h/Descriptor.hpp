//
// Created by os on 8/24/22.
//

#ifndef MK_OS_PROJECT_DESCRIPTOR_HPP
#define MK_OS_PROJECT_DESCRIPTOR_HPP
#include "../lib/hw.h"
typedef struct Descriptor{
    Descriptor*next,*prev;
    size_t size;
    int status=0;//1-allocated 0-free
}Descriptor;
void format(Descriptor*head);
size_t convert(size_t size);
#endif //MK_OS_PROJECT_DESCRIPTOR_HPP
