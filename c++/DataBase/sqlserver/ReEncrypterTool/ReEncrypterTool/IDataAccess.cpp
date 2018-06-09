#include "IDataAccess.h"
#include <iostream>
namespace kingdom{
    using namespace std;

    IDataAccess::IDataAccess():m_contextPtr(0),m_recordCount(0)
    {}

    IDataAccess::~IDataAccess()
    {}

    int IDataAccess::doWork(ContextPtr contextPtr)
    {
        int res=0;
        do 
        {
            if((res=this->initialize(contextPtr))!=0)
            {
                cout<<"initialize error,res="<<res<<endl;
                break;
            }
            if((res=this->connect())!=0)
            {
                cout<<"connect error,res="<<res<<endl;
                break;
            }
            if((res=this->query())!=0)
            {
                cout<<"query error,res="<<res<<endl;
                break;
            }
            if(m_recordCount>0)
            {
                this->traversalResult();
            }
            if((res=this->close())!=0)
            {
                cout<<"close error,res="<<endl;
                break;
            }
            this->unInitialize();
        } while (0);
        return res;
    }

    int IDataAccess::initialize(ContextPtr contextPtr)
    {
        m_contextPtr=contextPtr;
        return 0;
    }

    int IDataAccess::connect()
    {
        return 0;
    }

    int IDataAccess::close()
    {
        return 0;
    }

    int IDataAccess::query()
    {
        return 0;
    }

    void IDataAccess::traversalResult()
    {
    }

    void IDataAccess::unInitialize()
    {
        m_contextPtr.reset();
    }
}