//
// Created by os on 8/17/22.
//

#include "../h/syscall_cpp.hpp"
class DataWrapper{
public:
    time_t period;
    PeriodicThread* ptr;
    DataWrapper(time_t t,PeriodicThread*p){
        period = t;
        ptr= p;
    }
};
PeriodicThread::PeriodicThread(time_t period) {

        DataWrapper* dw = new DataWrapper(period,this);
        Thread(PeriodicThread::wrapper,(void*)dw);

}
void PeriodicThread::wrapper(void * data) {

    DataWrapper * dw = (DataWrapper*)data;
    while(true){
        time_sleep(dw->period);
        dw->ptr->periodicActivation();
    }
    delete dw;
}