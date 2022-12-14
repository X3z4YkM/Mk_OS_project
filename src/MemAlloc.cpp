//
// Created by os on 8/24/22.
//

#include "../h/MemAlloc.hpp"

Descriptor* MemAlloc::memfree= nullptr;
Descriptor* MemAlloc::memalloc= nullptr;



void MemAlloc::initMem() {
    memfree=(Descriptor*)HEAP_START_ADDR;
    memfree->prev= nullptr;
    memfree->next= nullptr;
    memfree->size=(size_t)(HEAP_SIZE);
    memfree->status=0;
}

void* MemAlloc::alloc(size_t size) {
    size_t newSize = convert(size);
    Descriptor* cur = memfree;
    while(cur){
        if(cur->size==newSize){
           // remove(&memfree,cur);
           if(cur==memfree){
               memfree=memfree->next;
               if(memfree)memfree->prev= nullptr;
               cur->next=cur->prev= nullptr;
           }else
               if(cur->next== nullptr){
                   cur->prev->next= nullptr;
                   cur->prev= nullptr;
               }else{
                   cur->prev->next=cur->next;
                   cur->next->prev=cur->prev;
                   cur->next=cur->prev= nullptr;
               }
            cur->status=1;
            //insert(&memalloc,cur);
                if(memalloc == nullptr){

                    memalloc=cur;
                    cur->next=cur->prev= nullptr;
                }else
                {
                    Descriptor *pom=memalloc->next;
                    Descriptor *prev = memalloc;
                    bool status= false;
                    while(pom){
                        if(cur<pom){
                            cur->status=1;
                            prev->next=cur;
                            pom->prev=cur;
                            cur->next=pom;
                            cur->prev=prev;
                            status=true;
                            break;
                        }
                        prev=pom;
                        pom=pom->next;
                    }
                    if(status){
                        prev->next=cur;
                        cur->prev=prev;
                    }
                }
            return (void*)((char*)(cur)+MEM_BLOCK_SIZE);
        }else
        if(cur->size>newSize) {
            if(cur==memfree){
                memfree=memfree->next;
                if(memfree)memfree->prev= nullptr;
                cur->next=cur->prev= nullptr;
            }else
            if(cur->next== nullptr){
                cur->prev->next= nullptr;
                cur->prev= nullptr;
            }else{
                cur->prev->next=cur->next;
                cur->next->prev=cur->prev;
                cur->next=cur->prev= nullptr;
            }
            cur->status=1;

            Descriptor * newfrgm = (Descriptor*)((char*)cur+newSize+MEM_BLOCK_SIZE);
            if(cur->prev)cur->prev->next=newfrgm;
            else memfree=newfrgm;
            if(cur->next)cur->next->prev=newfrgm;
            newfrgm->prev=cur->prev;
            newfrgm->next=cur->next;
            newfrgm->size= (cur->size - newSize - MEM_BLOCK_SIZE);
            newfrgm->status=0;
            cur->size = newSize;
            cur->status=1;

            if(memalloc == nullptr){

                memalloc=cur;
                cur->next=cur->prev= nullptr;
            }else
            {
                Descriptor *pom=memalloc->next;
                Descriptor *prev = memalloc;
                bool status= false;
                while(pom){
                    if(cur<pom){
                        cur->status=1;
                        prev->next=cur;
                        pom->prev=cur;
                        cur->next=pom;
                        cur->prev=prev;
                        status=true;
                        break;
                    }
                    prev=pom;
                    pom=pom->next;
                }
                if(status){
                    prev->next=cur;
                    cur->prev=prev;
                }
            }
            return (void*)((char*)(cur) + MEM_BLOCK_SIZE);

        }
    cur=cur->next;
    }
    return nullptr;

}

int MemAlloc::mem_free(void*ptr){
    if(!ptr)return -1;

    Descriptor *pom = (Descriptor*)((char*)(ptr)-MEM_BLOCK_SIZE);
    if(pom->status==1)return -1;

//***********
    if(pom==memalloc){
        memalloc=memalloc->next;
        if(memalloc)memalloc->prev= nullptr;
        pom->next=pom->prev= nullptr;
    }else
    if(pom->next== nullptr){
        pom->prev->next= nullptr;
        pom->prev= nullptr;
    }else{
        pom->prev->next=pom->next;
        pom->next->prev=pom->prev;
        pom->next=pom->prev= nullptr;
    }
    pom->status=0;

//*********

    Descriptor *cur= nullptr;
        pom->status=0;
  if(!memfree|| (char*)pom<(char*)memfree){
      cur= nullptr;
  }else{
      for(cur=memfree;cur->next!= nullptr&& (char*)pom>(char*)(cur->next);
        cur=cur->next);
  }

      if(cur && (char*)cur+cur->size+MEM_BLOCK_SIZE==(char*)pom){
          cur->size+=pom->size+MEM_BLOCK_SIZE;
          if(cur->next && (char*)cur+cur->size+MEM_BLOCK_SIZE == (char*)(cur->next)){
              cur->size+=cur->next->size+MEM_BLOCK_SIZE;
              cur->next = cur->next->next;
              if(cur->next)cur->next->prev=cur;
          }
          cur->status=0;
          return 0;
      }else{
            Descriptor *nextSeg = cur?cur->next:memfree;
            if(nextSeg && (char*)pom+pom->size+MEM_BLOCK_SIZE == (char*)nextSeg){
                Descriptor * newSeg = pom;
                newSeg->size=nextSeg->size+pom->size+MEM_BLOCK_SIZE+MEM_BLOCK_SIZE;
                newSeg->prev=nextSeg->prev;
                newSeg->next=nextSeg->next;
                newSeg->status=0;
                if(nextSeg->next)nextSeg->next->prev=newSeg;
                if(nextSeg->prev)nextSeg->prev->next=newSeg;
                else memfree=newSeg;
                return 0;
            }else{
                Descriptor * newSeg =pom;
                newSeg->size=pom->size+MEM_BLOCK_SIZE;
                newSeg->prev =cur;
                newSeg->status=0;
                if(cur)newSeg->next=cur->next;
                else newSeg->next=memfree;
                if(newSeg->next)newSeg->next->prev=newSeg;
                if(cur)cur->next=newSeg;
                else memfree=newSeg;
            }
      }

    return 0;
}


int MemAlloc::mem_alter_free(void *ptr) {
    if(!ptr)return -1;

    Descriptor *pom = (Descriptor*)((char*)(ptr)-MEM_BLOCK_SIZE);
    if(pom->status==1)return -1;
    if((char*)pom ==(char*)memalloc){
        memalloc=memalloc->next;
        if(memalloc)memalloc->prev= nullptr;
        pom->next=pom->prev= nullptr;
    }else
    if(pom->next== nullptr){
        pom->prev->next= nullptr;
        pom->prev= nullptr;
    }else{
        pom->prev->next=pom->next;
        pom->next->prev=pom->prev;
        pom->next=pom->prev= nullptr;
    }
    pom->status=0;
    Descriptor *cur= nullptr;
    if(!memfree || (char*)pom<(char*)memfree)
        cur= nullptr;
    else {
        for (cur = memfree; cur->next != nullptr && (char *) pom > (char *) (cur->next);
             cur = cur->next);
    }

        Descriptor * newSeg =pom;
        newSeg->size=pom->size+MEM_BLOCK_SIZE;
        newSeg->prev=cur;
        if(cur)newSeg->next=cur->next;
        else newSeg->next=memfree;
        if(newSeg->next)newSeg->next->prev=newSeg;
        if(cur)cur->next=newSeg;
        else memfree=newSeg;
    format(newSeg);
    format(cur);

    return 0;
}