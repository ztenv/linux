#include <iostream>

#include <cstring>
#include <cstdio>
#include <cstdlib>

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>

using namespace std;

const char * filename="./stat.file";


void Fstat(int fd,struct stat *pstat);
int main(int argc,char *argv[])
{
    struct stat pstat;
    bzero(&pstat,sizeof(struct stat));

    int fd=open(filename,O_CREAT|O_RDWR|O_TRUNC,0666);
    if(fd<0)
    {
        perror("open error");
        return -2;
    }
    Fstat(fd,&pstat);
    for(int i=0;i<10;++i)
    {
        ssize_t wlen=write(fd,&i,sizeof(i));
        if(wlen!=sizeof(i))
        {
            perror("write error");
            return -3;
        }
    }
    Fstat(fd,&pstat);
    int res=syncfs(fd);
    if(res!=0)
    {
        perror("sync error");
    }
    Fstat(fd,&pstat);
    res=close(fd);
    if(res!=0)
    {
        perror("close error");
        return -4;
    }
    fd=-1;

    return 0;
}

void Fstat(int fd,struct stat *pfstat)
{
    int res=fstat(fd,pfstat);
    if(res!=0)
    {
        perror("fstat error");
    }else
    {
        cout<<"st_dev="<<pfstat->st_dev<<endl;
        cout<<"st_ino="<<pfstat->st_ino<<endl;
        cout<<"st_mode="<<pfstat->st_mode<<endl;
        cout<<"st_nlink="<<pfstat->st_nlink<<endl;
        cout<<"st_uid="<<pfstat->st_uid<<endl;
        cout<<"st_gid="<<pfstat->st_gid<<endl;
        cout<<"st_rdev="<<pfstat->st_rdev<<endl;
        cout<<"st_size="<<pfstat->st_size<<endl;
        cout<<"st_blksize="<<pfstat->st_blksize<<endl;
        cout<<"st_blocks="<<pfstat->st_blocks<<endl;

//        cout<<"st_atime="<<pfstat->st_atim<<endl;
//        cout<<"st_mtime="<<pfstat->st_mtim<<endl;
//        cout<<"st_ctime="<<pfstat->st_ctim<<endl;

        cout<<endl;
    }
}
