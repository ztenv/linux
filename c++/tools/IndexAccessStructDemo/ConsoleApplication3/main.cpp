// ConsoleApplication3.cpp : Defines the entry point for the console application.
//

#ifdef __WIN32_
#include "stdafx.h"
#endif
#include "CcustNraTaxInfo.h"

#include <iostream>
#include <sstream>
using namespace std;

int main()
{
    CcustNraTaxInfo::ST_R1Record recorder;
    ostringstream oss;

    for(int i=0;i<62;++i)
    {
        oss.str("");
        oss<<i;
        if(recorder.set(i,oss.str().c_str())<0)
        {
            cout<<"set error index:"<<i<<endl;
            break;
        }
    }
    for(int i=0;i<62;++i)
    {
        if(recorder.get(i)!=NULL)
        {
            cout<<recorder.get(i)<<endl;
        }
        else{
            cout<<i<<" is nullptr"<<endl;
        }
    }

    cout<<recorder<<endl;
    getchar();
    return 0;
}

