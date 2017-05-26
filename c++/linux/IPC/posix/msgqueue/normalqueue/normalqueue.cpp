#include <iostream>
#include <string>

#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <cstring>

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <wait.h>
#include <signal.h>
#include <mqueue.h>

using namespace std;

const int MAX_MESSAGE_LENGTH=8192;
const char * QUEUE_NAME="/lsh.queue";

mqd_t mqdes=-1;

struct Message
{
    Message():length(0)
    {
       bzero(data,MAX_MESSAGE_LENGTH);
    }
    ~Message()
    {
    }
    void clear()
    {
        length=0;
        bzero(data,MAX_MESSAGE_LENGTH);
    }
    size_t length;
    char data[MAX_MESSAGE_LENGTH];
};

void sighandler(int signum)
{
    switch(signum)
    {
    case SIGCHLD:
        {
            pid_t pid=-1;
            int status=-1;
            while((pid=waitpid(-1,&status,WNOHANG))>=0)
            {
                cout<<"child process "<<pid<<" exited!"<<endl;
            }
            break;
        }
    case SIGINT:
        {
            mq_close(mqdes);
            mq_unlink(QUEUE_NAME);
        }
    default:
        {
        }
    }
}

void service();
void client();
int main(int argc,char *argv[])
{
    struct sigaction sig;
    sigemptyset(&sig.sa_mask);
    sig.sa_flags=0;
    sig.sa_handler=sighandler;
    int res=sigaction(SIGCHLD,&sig,NULL);
    res|=sigaction(SIGINT,&sig,NULL);
    if(res!=0)
    {
        perror("sigaction error");
        return -1;
    }
    srand(time(NULL));

    pid_t pid=fork();
    if(pid==0)
    {
        cout<<"child process "<<getpid()<<endl;
        client();
    }else if(pid>0)
    {
        cout<<"parent process "<<getpid()<<endl;
        service();
        sleep(1);
    }else
    {
        perror("fork error");
        return -10;
    }
    return 0;
}

void service()
{
    mqdes=mq_open(QUEUE_NAME,O_WRONLY|O_CREAT,0666,NULL);
    if(mqdes<0)
    {
        perror("mq_open error");
        return;
    }
    time_t t=0;
    char *p=NULL;
    int res=0;
    Message msg;
    do
    {
        res=time(&t);
        if(res<0)
        {
            perror("time error");
        }else
        {
            msg.clear();
            p=ctime_r(&t,msg.data);
            if(p==NULL)
            {
                perror("ctime_r error");
            }else
            {
                msg.length=strlen(msg.data)-1;
                res=mq_send(mqdes,msg.data,msg.length,rand()%32);
                if(res!=0)
                {
                    perror("mq_send error");
                    break;
                }
            }
        }
        sleep(rand()%2+1);
    }while(true);

    mq_close(mqdes);
}

void client()
{
    mqdes=mq_open(QUEUE_NAME,O_RDONLY|O_CREAT,0666,NULL);
    if(mqdes<0)
    {
        perror("mq_open error");
        return;
    }
    Message msg;
    ssize_t rlen=0;
    unsigned int prio=0;
    do
    {
        msg.clear();
        rlen=mq_receive(mqdes,msg.data,MAX_MESSAGE_LENGTH,&prio);
        if(rlen<=0)
        {
            perror("mq_receive error");
            break;
        }
        cout<<"prio="<<prio<<","<<msg.data<<endl;
    }while(true);

    mq_close(mqdes);
}
