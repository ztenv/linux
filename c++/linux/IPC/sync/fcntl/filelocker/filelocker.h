#include <fcntl.h>

class filelocker
{
public:
    filelocker()
    {
        m_flock.l_start=0;
        m_flock.l_len=0;
        m_flock.l_whence=SEEK_SET;
    }
    ~filelocker(){}

    int getReadLock(int fd)
    {
        m_flock.l_type=F_RDLCK;
        return fcntl(fd,F_SETLK,&m_flock);
    }
    void getReadLockWait(int fd)
    {
        m_flock.l_type=F_RDLCK;
        fcntl(fd,F_SETLKW,&m_flock);
    }

    int getWriteLock(int fd)
    {
        m_flock.l_type=F_WRLCK;
        return fcntl(fd,F_SETLK,&m_flock);
    }

    void getWriteLockWait(int fd)
    {
        m_flock.l_type=F_WRLCK;
        fcntl(fd,F_SETLKW,&m_flock);
    }

    void unlock(int fd)
    {
        m_flock.l_type=F_UNLCK;
        fcntl(fd,F_SETLKW,&m_flock);
    }
private:
    struct flock m_flock;
};
