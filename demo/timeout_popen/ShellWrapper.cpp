#include "ShellWrapper.h"

#include <cstring>

#include <iostream>
#include <thread>
#include <atomic>

using namespace std;

namespace uvframe{
    namespace oggAgent{

       void CShellWrapper::run(std::string &&cmd,std::stringstream &output,size_t timeout)
        {
            output.str("");
            std::ostringstream oss;
            oss<<"source ~/.bashrc;timeout "<<timeout<<" "<<cmd<<";echo $?"<<endl;
            FILE* fp=nullptr;

            if ((fp = popen(oss.str().c_str(), "r")) != NULL)
            {
                char buf[4*1024];
                while(!feof(fp))
                {
                    memset(buf,0,sizeof(buf));
                    fgets(buf,sizeof(buf)-1,fp);
                    output<<buf;
                }
                pclose(fp);
            }
        }
    }
}
