//
// Created by os on 8/19/22.
//

#ifndef MK_OS_PROJECT_MYWAITLIST_HPP
#define MK_OS_PROJECT_MYWAITLIST_HPP

#include "tcb.hpp"
class MyWaitList{
private:
    struct Element{
        TCB * tcb;
        Element* next;
        Element(TCB*t){
            tcb=t;
            next= nullptr;
        }
        void * operator new(size_t size){return __mem_alloc(size);}
        void operator delete (void*ptr){ __mem_free(ptr);}
    };

    Element * head,*tail;
    unsigned size=0;
public:
    void * operator new(size_t size){return __mem_alloc(size);}
    void operator delete (void*ptr){ __mem_free(ptr);}
    bool isEmpty(){return size==0?true: false;}
    MyWaitList(){
        head= nullptr;
        tail= nullptr;
    }
    void add(TCB*tcb){
        Element * el = new Element(tcb);
        if(!head){
            head=el;
            tail=head;
            size++;
        }else{
            tail->next=el;
            tail=el;
            size++;
        }
    }

    TCB* removeFirst(){
        if(size==0)return nullptr;
        Element*pom = head;
        head=head->next;
        if(!head){tail=0;}
        size--;
        TCB*t =pom->tcb;
        delete pom;
        return t;
    }

};

#endif //MK_OS_PROJECT_MYWAITLIST_HPP

