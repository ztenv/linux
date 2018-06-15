#include "IDataAccess.h"

#include <iostream>

#include "kdstoragecrypt.h"

namespace kingdom{
    using namespace std;

    IDataAccess::IDataAccess():m_isReady(false),m_runFlag(true)
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

    int IDataAccess::reEncrypt(ST_DataRecord &record)
    {
#ifdef _WIN32
        EM_PlatformType pt=EM_PLATFORM_W;
#else
        EM_PlatformType pt=EM_PLATFORM_U;
#endif

        if((record.AuthData[0]!=0)||((record.AuthData[0]==' ')&&(record.AuthData[1]!=0)))
        {
            int res=CipherToGMCipher((unsigned char*)record.AuthNewData,sizeof(record.AuthNewData),(unsigned char*)record.UserCode,strlen(record.UserCode),(unsigned char*)record.AuthData,strlen(record.AuthData),(unsigned char *)record.UserCode,strlen(record.UserCode),pt);
            if(res>0)
            {
                record.AuthNewData[res]=0;
            }
            return res;
        }

        return -1;
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
