#include <cstring>
#include <string>
#include <iostream>
#include "ShellWrapper.h"

using namespace std;

int main(int argc,char *argv[])
{
    if(argc<=1)
    {
        cout<<"pleast input a valid cmd ,such as: ./main \"ls -l\""<<endl;
        return 0;
    }

    while(true)
    {
        std::stringstream ss;
        uvframe::oggAgent::CShellWrapper::run(argv[1],ss,1);
        char buf[1024*4];
        int i=0;
        while(!ss.eof())
        {
            memset(buf,0,sizeof(buf));
            ss.getline(buf,sizeof(buf)-1);
            cout<<++i<<":"<<buf<<endl;
        }
        cout<<"***********************repeat run **************"<<endl;
    }

    return 0;
}
