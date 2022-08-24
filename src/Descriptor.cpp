//
// Created by os on 8/24/22.
//
#include "../h/Descriptor.hpp"

void format(Descriptor*cur){

    if(!cur)return;
    if(cur->next &&(char *)cur+cur->size+MEM_BLOCK_SIZE==(char *)(cur->next)){
        cur->size+=cur->next->size+MEM_BLOCK_SIZE;
        cur->next=cur->next->next;
        if(cur->next)cur->next->prev=cur;
        return;
    }
}
size_t convert(size_t size){
    if(size%MEM_BLOCK_SIZE==0){
        return size;
    }else{
        return (size/MEM_BLOCK_SIZE+1)*MEM_BLOCK_SIZE;
    }
}