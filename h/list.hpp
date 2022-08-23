//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_LIST_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_LIST_HPP
#include "../lib/mem.h"
template<typename T>
class List
{
private:
    struct Elem
    {
        T *data;
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}
        void *operator new (size_t size){return __mem_alloc(size);}
        void operator delete (void * ptr){ __mem_free(ptr);}
    };

    Elem *head, *tail;
    unsigned sizeofList=0;
public:
    List() : head(0), tail(0) {
        sizeofList=0;
    }

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;
    unsigned size() const {return sizeofList;}
    void addFirst(T *data)
    {
        Elem *elem = new Elem(data, head);
        head = elem;
        if (!tail) { tail = head; }
        sizeofList++;
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
            head = tail = elem;
        }
        sizeofList++;
    }

    T *removeFirst()
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
        sizeofList--;
        T *ret = elem->data;
        delete elem;
        return ret;
    }
    void add_by_time(T*el1){
        Elem* cur=head;
        Elem* mid= nullptr;
            if(!cur || el1->time<=cur->data->time){ addFirst(el1);

            }//ako cur == null ili je cur vreme manje =  od nase vreme
            else {
                while (cur && cur->data->time <= el1->time) {
                    mid = cur;
                    cur = cur->next;
                }
                if (mid == tail && !cur) { // ako smo veci od svih u listi
                    addLast(el1);
                } else if (cur == tail && cur->data->time == el1->time) { //ako smo jednaki sa tail
                    addLast(el1);
                } else {   //sredina
                    Elem *ins = new Elem(el1, 0);
                    mid->next = ins;
                    ins->next = cur;
                    sizeofList++;
                }
            }

        }


    T *peekFirst()
    {
        if (!head||sizeofList==0) { return 0; }
        return head->data;
    }
        bool tickCheck(time_t currenttime){
            if(!head)return false;
            if(head->data->time<=currenttime)return true;
            else
                return false;
        }
    T *removeLast()
    {
        if (!head) { return 0; }

        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;

        T *ret = elem->data;
        delete elem;
        sizeofList--;
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
        return tail->data;
    }
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_LIST_HPP
