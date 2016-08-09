/**
 * 文件描述：无锁队列的生产者、消费者模式
 * 文件日期：2016-08-09
 * 作    者：lianshaohua
 */
#include "ProduceAndCustomer.h"

#include <iostream>
#include <string>

#include <boost/foreach.hpp>
#include <boost/format.hpp>
#include <boost/chrono.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>

namespace shlian{
namespace pv{

using boost::format;

using namespace std;

ProduceAndConsumer::ProduceAndConsumer():m_isRunning(false),m_proNum(0),m_conNum(0)
{
    m_queuePtr=QueueTypePtr(new queue<char *>(100));
    cout<<(format("is_lock_free=%1%") % (m_queuePtr->is_lock_free()?"true":"false"))<<endl;
}

ProduceAndConsumer::~ProduceAndConsumer()
{
}

int ProduceAndConsumer::Start(int pThreadNum,int cThreadNum)
{
    m_isRunning=true;
    cout<<(format("starting...,create %1% produce threads,create %2% consume threads")
           % pThreadNum % cThreadNum)<<endl;
    for(int i=0;i<cThreadNum;++i)
    {
        m_conThreadGroup.create_thread(boost::bind(&ProduceAndConsumer::consume,this));
    }

    for(int i=0;i<pThreadNum;++i)
    {
        m_proThreadGroup.create_thread(boost::bind(&ProduceAndConsumer::produce,this));
    }
    cout<<"started"<<endl;
    return 0;
}

int ProduceAndConsumer::Stop()
{
    m_isRunning=false;
    m_proThreadGroup.join_all();
    m_conThreadGroup.join_all();
    return 0;
}

void ProduceAndConsumer::produce()
{
    boost::posix_time::ptime pt;
    string pts;
    do{
        pt=boost::get_system_time();
        pts=boost::posix_time::to_simple_string(pt);
        char *pbuf=new char[pts.length()+1];
        memcpy(pbuf,pts.c_str(),pts.length()+1);
        while(!m_queuePtr->push(pbuf));
        {
            LockType lock(m_pmutex);
            if(++m_proNum%10000==0)
            {
                cout<<(format("produce %1% value") % m_proNum ) <<endl;
                cout<<pts<<endl;
            }
        }
        boost::this_thread::sleep_for(boost::chrono::milliseconds(5));
    }while(m_isRunning);
    cout<<(format("proeduce %1% value") % m_proNum)<<endl;
}

void ProduceAndConsumer::consume()
{
    char * pt=0;
    do{
        while(m_queuePtr->pop(pt))
        {
            {
                LockType lock(m_cmutex);
                if(++m_conNum%10000==0)
                {
                    cout<<(format("consume %1% value") % m_conNum )<<endl;
                    cout<<pt<<endl;
                }
            }
            delete[] pt;
        }
        boost::this_thread::sleep_for(boost::chrono::milliseconds(50));
    }while(m_isRunning||!m_queuePtr->empty());
    cout<<(format("consume %1% value") % m_conNum)<<endl;
}


}
}
