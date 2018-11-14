#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <string>
#include <iostream>

using namespace std;

void print_result(FILE *fp)
{
    char buf[1000]={0};
    std::string result;
    while(!feof(fp))
    {
        memset(buf,0,sizeof(buf));
        fgets(buf,sizeof(buf)-1,fp);
        result.append(buf);
    }
    cout<<"************************************************************"<<endl;
    cout<<result<<endl;
    cout<<"************************************************************"<<endl;
}

int main(int argc,char *argv[])
{
    if(argc<=1)
    {
        cout<<"pleast input a valid cmd ,such as: ./main \"ls -l\""<<endl;
        return 0;
    }
    FILE* fp = NULL;
    std::string cmd(argv[1]);
    //些命令使用的是stderr，所以下面的无法读取输出，必须要把2映射到1，例如oracle的导出命令
    //就是如此："expdp  ****   2>&1"才能获取输出
    if ((fp = popen(cmd.c_str(), "r")) != NULL)
    {
        print_result(fp);
        pclose(fp);
    }

    return 0;
}
