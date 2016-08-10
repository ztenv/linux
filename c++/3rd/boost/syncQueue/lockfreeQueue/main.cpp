/**
 * 文件描述：无锁队列的生产者、消费者模式
 * 文件日期：2016-08-09
 * 作    者：lianshaohua
 */
#include <cstdio>

#include "ProduceAndCustomer.h"

using namespace shlian::pv;

int main(int argc,char *argv[])
{
    ProduceAndConsumerPtr pcPtr=ProduceAndConsumerPtr(new ProduceAndConsumer());

    pcPtr->Start(80,100);
    getchar();
    pcPtr->Stop();
    getchar();
    return 0;
}
