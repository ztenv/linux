#include <iostream>
#include <string>

#include <cstring>
#include <cstdio>
#include <cstdlib>

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <getopt.h>

using namespace std;
const size_t BUFSIZE=1024;
const size_t DATABUFSIZE=4*1024;

void parseopt(int argc,char *argv[],string &srcfile,string &dstfile);
int copy(const string &srcfile,const string &dstfile);
int main(int argc,char *argv[])
{
    string srcfile;
    string dstfile;
    int res=0;

    parseopt(argc,argv,srcfile,dstfile);

    if((srcfile.c_str()!=NULL)&&(dstfile.c_str()!=NULL))
    {
        res=copy(srcfile,dstfile);
    }

    return res;
}

int copy(const string &srcfile,const string &dstfile)
{
    char errorinfo[BUFSIZE];
    bzero(errorinfo,BUFSIZE);

    FILE * srcf=fopen(srcfile.c_str(),"rb+");
    if(srcf==NULL)
    {
        perror("fopen error");
        return -1;
    }
    FILE *dstf=fopen(dstfile.c_str(),"wrb+");
    if(dstf==NULL)
    {
        fclose(srcf);
        srcf=NULL;
        perror("fopen error");
        return -2;
    }
    int res=0;
    char rbuf[DATABUFSIZE];
    bzero(rbuf,DATABUFSIZE);
    char wbuf[DATABUFSIZE];
    bzero(wbuf,DATABUFSIZE);

    setvbuf(srcf,rbuf,_IOFBF,DATABUFSIZE);
    setvbuf(dstf,wbuf,_IOFBF,DATABUFSIZE);
    ssize_t rlen=0;
    ssize_t wlen=0;

    char databuf[DATABUFSIZE];

    while(!feof(srcf))
    {
        bzero(databuf,DATABUFSIZE);
        rlen=fread(databuf,1,DATABUFSIZE,srcf);
        if(rlen<=0)
        {
            bzero(errorinfo,BUFSIZE);
            snprintf(errorinfo,BUFSIZE,"%s%s%s","read src file:",srcfile.c_str()," error");
            perror(errorinfo);
            res=-3;
            break;
        }
        wlen=fwrite(databuf,1,rlen,dstf);
        if(wlen<=0)
        {
            bzero(errorinfo,BUFSIZE);
            snprintf(errorinfo,BUFSIZE,"%s%s%s","write dst file:",dstfile.c_str()," error");
            perror(errorinfo);
            res=-4;
            break;
        }
    }

    fclose(srcf);
    srcf=NULL;
    fclose(dstf);
    dstf=NULL;

    return res;
}

void parseopt(int argc,char *argv[],string &srcfile,string &dstfile)
{
    const char *shortopt="s:d:h";
    const struct option longopt[]={
        {"srcfile",1,NULL,'s'},
        {"dstfile",1,NULL,'d'},
        {"help",0,NULL,'h'},
        {NULL,0,NULL,0}
    };

    int result=0;
    int optindex=0;
    do
    {
        result=getopt_long(argc,argv,shortopt,longopt,&optindex);
        switch(result)
        {
            case 's':
                {
                    srcfile=optarg;
                    cout<<"srcfile="<<srcfile<<endl;
                    break;
                }
            case 'd':
                {
                    dstfile=optarg;
                    cout<<"dstfile="<<dstfile<<endl;
                    break;
                }
            case '?':
            case 'h':
                {
                    cout<<"options"<<endl;
                    cout<<"--srcfile=filename [-s filename]"<<endl;
                    cout<<"--dstfile=filename [-d filename]"<<endl;
                    cout<<"--help [-h]"<<endl;
                    break;
                }
        }
    }while(result!=-1);
}
