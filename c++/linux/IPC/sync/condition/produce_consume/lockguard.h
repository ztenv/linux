#ifndef __LOCK_GUARD_HEADER_
#define __LOCK_GUARD_HEADER_
#include <pthread.h>

class lockguard
{
public:
    lockguard(pthread_mutex_t *mutex):m_mutex(mutex)
    {
        pthread_mutex_lock(m_mutex);
    }
    ~lockguard()
    {
        pthread_mutex_unlock(m_mutex);
    }
private:
    pthread_mutex_t *m_mutex;
};

#define MutexGuard(obj) \
    lockguard lg(obj);

#endif
