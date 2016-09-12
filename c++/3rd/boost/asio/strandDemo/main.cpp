#include <iostream>

#include <boost/asio.hpp>
#include <boost/asio/io_service.hpp>
#include <boost/asio/strand.hpp>

#include <boost/thread.hpp>
#include <boost/bind.hpp>
#include <boost/ref.hpp>

using namespace std;


void SleepFor(int sec)
{
    cout<<"SleepForing "<<sec<<" seconds..."<<endl;
    boost::this_thread::sleep_for(boost::chrono::seconds(sec));
    cout<<"SleepFored "<<sec<<" seconds"<<endl;
}

void Func()
{
    cout<<"Funcing..."<<endl;
    cout<<"Funced"<<endl;
}

int main(int argc, char *argv[])
{
    boost::asio::io_service ios;
    boost::asio::io_service::work work(ios);
    boost::asio::strand  str(ios);

    //如果屏蔽掉t或t1中的一个线程，那么直到SleepFor执行完之后才会执行Func，因为整个ios只有一个线程
    //如果让ios有多个线程，那么Func会先于SleepFor执行完毕，Func可运行在除SleepFor运行线程
    //的其他线程
    boost::thread t(boost::bind(&boost::asio::io_service::run,boost::ref(ios)));
    boost::thread t1(boost::bind(&boost::asio::io_service::run,boost::ref(ios)));

    str.post(boost::bind(&SleepFor,10));

    ios.post(boost::bind(&Func));

    getchar();

    return 0;
}
