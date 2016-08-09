/**
 * 文件描述：无锁队列的生产者、消费者模式
 * 文件日期：2016-08-09
 * 作    者：lianshaohua
 */
#pragma once

#include <boost/lockfree/queue.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/thread.hpp>
#include <boost/bind.hpp>
#include <boost/date_time/posix_time/ptime.hpp>
#include <boost/atomic.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/thread/lock_guard.hpp>

namespace shlian{
namespace pv{

using boost::lockfree::queue;
typedef boost::lock_guard<boost::mutex> LockType;

typedef boost::shared_ptr< queue<char *> > QueueTypePtr;

class ProduceAndConsumer
{
public:
    ProduceAndConsumer();
    ~ProduceAndConsumer();
    int Start(int pThreadNum,int cPthreadNum);
    int Stop();
private:
    QueueTypePtr m_queuePtr;
    boost::atomic<bool> m_isRunning;
    boost::atomic<long> m_proNum;
    boost::atomic<long> m_conNum;
    boost::thread_group m_proThreadGroup;
    boost::thread_group m_conThreadGroup;
    boost::mutex m_pmutex;
    boost::mutex m_cmutex;

    void produce();
    void consume();
};
typedef boost::shared_ptr<ProduceAndConsumer> ProduceAndConsumerPtr;

}
}
