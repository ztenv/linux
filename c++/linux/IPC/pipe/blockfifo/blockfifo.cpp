#include <iostream>

#include <cstdio>

#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

using namespace std;

int main(int argc,char *argv[])
{
    int res=mkfifo("./ff",0666);
    if(res<0)
    {
        perror("mkfifo error");
        return -1;
    }

    cout<<"process will block....,press Ctrl+c to break block!"<<endl;
    int rfd=open("./ff",O_RDONLY,0);//will block here until writed open successfully.
    int wfd=open("./ff",O_WRONLY,0);

    close(rfd);
    close(wfd);
    return 0;
}
