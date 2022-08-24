//
// Created by os on 8/24/22.
//
#include "../h/Descriptor.hpp"
void insert(Descriptor** head,Descriptor*des){
    if(!des)return;
    if(!(*head)){
        //ako je lista prazna
        *head=des;
        return;
    }else{
        //ako lista nije prazna
        Descriptor *head_m =*head;

        if(des<head_m){
            //ako je prvi
            des->next=head_m;
            head_m->prev=des;
            *head=des;
            return;
        }
        Descriptor *cur = head_m->next;
        Descriptor *prev=head_m;
        while(cur){
            //ako je u sredini
            if(des<cur) {
                prev->next = des;
                cur->prev = des;
                des->next = cur;
                des->prev = prev;
                return;
            }
            prev=cur;
            cur=cur->next;
        }
        //ako je na kraju
        prev->next=des;
        des->prev=prev;

    }
}
void remove(Descriptor**head_p,Descriptor*des){
    if(!des)return;
    if(!head_p)return;
    Descriptor *head=*head_p;
    if(head==des){
        *head_p=head->next;
        if(*head_p){
            (*head_p)->prev= nullptr;
        }
        des->next= nullptr;
        des->prev= nullptr;

    }else {
        des->prev->next = des->next;

        if (des->next) {
            des->next->prev = des->prev;
        }
        des->next = nullptr;
        des->prev = nullptr;
    }
}
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