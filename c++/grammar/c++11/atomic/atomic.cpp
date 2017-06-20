#include <iostream>
#include <atomic>
#include <pthread.h>

using namespace std;

void process1();
void process2();

int main(int argc,char *argv[])
{
    std::atomic<int> ai;
    ai=10;
    cout<<"ai="<<ai<<endl;

    int bi;
    pthread_mutex_t pl;
    pthread_mutex_lock(&pl);
    bi=100;
    pthread_mutex_unlock(&pl);
    cout<<"bi="<<bi<<endl;

    process1();
    return 0;
}

/**
 * @brief 当单线程调用process1()和process2()时，后者效率更高；当多线程调用process1()和
 * process2()时，前者效率更高；
 */
void process1()
{
    unsigned long i(0);
    std::atomic<unsigned long> ai(0);
    do{
        ai=ai+1;
    }while(++i<100000000);
}

void process2()
{
    unsigned long i(0);
    unsigned long ai(0);
    pthread_mutex_t pl;
    do{
        pthread_mutex_lock(&pl);
        ai=ai+1;
        pthread_mutex_unlock(&pl);
    }while(++i<100000000);
}
