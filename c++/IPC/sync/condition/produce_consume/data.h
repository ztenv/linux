#ifndef __DATA_HEADER_
#define __DATA_HEADER_
#include <strings.h>
#include <cstdio>
#include <queue>

#include "lockguard.h"

template <typename T>
class CData
{
public:
    CData(size_t bufsize=1):m_capacity(bufsize==0?1:bufsize),m_pos(0)
    {
        int res=pthread_mutex_init(&m_mutex,NULL);
        res|=pthread_cond_init(&m_pcond,NULL);
        res|=pthread_cond_init(&m_ccond,NULL);
        if(res!=0)
        {
            perror("CData ctor error");
        }

    }
    ~CData()
    {
        int res=pthread_cond_broadcast(&m_pcond);
        res|=pthread_cond_broadcast(&m_ccond);
        res|=pthread_cond_destroy(&m_pcond);
        res|=pthread_cond_destroy(&m_ccond);
        res|=pthread_mutex_destroy(&m_mutex);
        if(res!=0)
        {
            perror("CData dtor error");
        }

        m_capacity=0;
    }

    int add(T * pdata)
    {
        {
            MutexGuard(&m_mutex);
            while(isfull())
            {
                pthread_cond_wait(&m_pcond,&m_mutex);
            }
            m_set.push(pdata);
            ++m_pos;
        }
        pthread_cond_signal(&m_ccond);
        return 0;
    }
    int read(T **pdata)
    {
        {
            MutexGuard(&m_mutex);
            while(isempty())
            {
                pthread_cond_wait(&m_ccond,&m_mutex);
            }
            *pdata=m_set.front();
            m_set.pop();
            --m_pos;
        }
        pthread_cond_signal(&m_pcond);
        return 0;
    }

private:
    bool isfull()
    {
        return m_pos==m_capacity;
    }
    bool isempty()
    {
        return m_pos==0;
    }

private:
    std::queue<T*> m_set;
    size_t m_capacity;
    size_t m_pos;

    pthread_mutex_t m_mutex;
    pthread_cond_t m_ccond;
    pthread_cond_t m_pcond;
};
#endif
