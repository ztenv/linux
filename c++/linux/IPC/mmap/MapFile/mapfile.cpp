#include <iostream>

#include <cstdio>
#include <cstdlib>

#include <sys/stat.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>
#include <strings.h>

using namespace std;

const char * FileName="./file.map";

int main(int argc,char *argv[])
{
    int fd=open(FileName,O_CREAT|O_RDWR|O_TRUNC,0666);
    if(fd<0)
    {
        perror("open error");
        return -1;
    }
    struct stat fs;
    bzero(&fs,sizeof(struct stat));

    int res=fstat(fd,&fs);
    if(res!=0)
    {
        perror("fstat error");
        return -1;
    }else
    {
        cout<<"file size:"<<fs.st_size<<endl;
    }
    size_t MapLen=fs.st_size==0?1024:fs.st_size;
    if(fs.st_size==0)
    {
        ftruncate(fd,MapLen);
    }

    void *addr=mmap(NULL,MapLen,PROT_READ|PROT_WRITE,MAP_SHARED,fd,0);
    if(addr==NULL)
    {
        perror("mmap error");
        return -1;
    }
    char *p=static_cast<char *>(addr);
    for(int i=0;i<MapLen;++i)
    {
        sprintf(p+i,"%d\n",i);
    }

    msync(addr,MapLen,MS_SYNC);
    munmap(addr,MapLen);
    close(fd);

    return 0;
}
