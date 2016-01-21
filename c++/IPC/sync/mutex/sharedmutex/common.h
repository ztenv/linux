#ifndef COMMON__HEADER__
#define COMMON__HEADER__
#include <cstring>
#include <cstdlib>

#include <pthread.h>
#include <fcntl.h>
#include <errno.h>

pthread_mutex_t *mutex_open(const char *name,int oflag,mode_t mode)
{
    int fd=open(name,oflag|O_CREAT|O_TRUNC|O_EXCL,mode);
    if(fd<0)
    {
        if(errno==EEXIST)
        {//文件存在,则直接从内存读取mutex数据即可，无须再次初始化
            fd=open(name,O_RDWR);
            void *addr=mmap(NULL,sizeof(pthread_mutex_t),PROT_READ|PROT_WRITE,MAP_SHARED,fd,0);
            close(fd);
            if(addr!=NULL)
            {
                return static_cast<pthread_mutex_t*>(addr);
            }
            return NULL;
        }
    }

    if((lseek(fd,sizeof(pthread_mutex_t)-1,SEEK_SET)<0)||(write(fd,"",1)<0))
    {//必须要设置文件位置，并写入一个数据，这样才能保证文件有数据，
        return NULL;
    }
    void *addr=mmap(NULL,sizeof(pthread_mutex_t),PROT_READ|PROT_WRITE,MAP_SHARED,fd,0);
    close(fd);
    if(addr!=NULL)
    {
        pthread_mutexattr_t attr;
        pthread_mutexattr_setpshared(&attr,PTHREAD_PROCESS_SHARED);
        pthread_mutex_init(static_cast<pthread_mutex_t*>(addr),&attr);
        pthread_mutexattr_destroy(&attr);
        return static_cast<pthread_mutex_t*>(addr);
    }
    return NULL;
}

int mutex_close(pthread_mutex_t *mutex)
{
    pthread_mutex_destroy(mutex);
    return munmap((void*)mutex,sizeof(pthread_mutex_t));
}

int mutex_unlink(const char *name)
{
    return unlink(name);
}
#endif
