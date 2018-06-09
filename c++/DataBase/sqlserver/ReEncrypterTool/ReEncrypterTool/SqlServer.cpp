#include "SqlServer.h"
#include <tchar.h>
#include <iostream>
#include <sstream>
#include <boost/progress.hpp>
#include "kdstoragecrypt.h"

using namespace std;
namespace kingdom{

    CSqlServer::CSqlServer()
    {
    }

    CSqlServer::~CSqlServer()
    {
    }

    int CSqlServer::initialize(ContextPtr contextPtr)
    {
        m_contextPtr=contextPtr;
        int res=0;
        ::CoInitialize(NULL);
        try
        {
            /* 创建connection对象 */
            res=m_connection.CreateInstance(_T("ADODB.Connection"));
        }
        catch(::_com_error e)
        {
            res=-1;
            cout<<"create connection instance error:"<<e.ErrorMessage()<<endl;
        }
        return res;
    }

    int CSqlServer::connect()
    {
        int res=0;
        try
        {
            /* 连接数据库 */
            ::_bstr_t strConnect=_T("uid=;pwd=;Server=127.0.0.1;Provider=SQLOLEDB;Database=kbssacct;");
            ::_bstr_t name=m_contextPtr->getUserName().c_str();
            ::_bstr_t pwd=m_contextPtr->getPassword().c_str();
            res=m_connection->Open(strConnect,name,pwd,::adModeUnknown);
        }
        catch(::_com_error e)
        {
            res=-1;
            cout<<"connect DataBase=kbssacct error:"<<e.ErrorMessage()<<endl;
        }
        return res;
    }

    int CSqlServer::close()
    {
        if(m_recordSet!=NULL)
        {
            m_recordSet->Close();
        }
        m_connection->Close();
        return 0;
    }

    int CSqlServer::query()
    {
        int res=0;
        try
        {
            const wchar_t* szSql=_T("SELECT USER_CODE,USER_ROLE,USE_SCOPE,AUTH_TYPE,AUTH_DATA,AUTH_DATA_TYPE from AUTH_INFO WHERE AUTH_DATA_TYPE=\'0\'");
            do{
                //创建记录对象  
                if((res=m_recordSet.CreateInstance(__uuidof(Recordset)))!=0)
                {
                    break;
                }
                if((res=m_recordSet->Open(szSql,m_connection.GetInterfacePtr(),adOpenStatic,adLockOptimistic,adCmdText))!=0)
                {
                    break;
                }
                m_recordCount=m_recordSet->GetRecordCount();
                m_contextPtr->getResultPtr()->TotalRecordCount=m_recordCount;
            } while(0);
        }
        catch(_com_error e)
        {
            cout<<"query AUTH_INFO error:"<<e.ErrorMessage()<<endl;
            res=-1;
        }
        return res;
    }

    inline int CSqlServer::reEncrypt(ST_DataRecord &record,_RecordsetPtr &recordSet)
    {
        snprintf(record.UserCode,sizeof(record.UserCode),"%lld",recordSet->GetCollect("USER_CODE").llVal);
        record.UserRole=*recordSet->GetCollect("USER_ROLE").pcVal;
        record.UserScope=*recordSet->GetCollect("USE_SCOPE").pcVal;
        record.AuthType=*recordSet->GetCollect("AUTH_TYPE").pcVal;
        record.AuthDataType=*recordSet->GetCollect("AUTH_DATA_TYPE").pcVal;
        record.AuthNewData[0]=0;
        strcpy(record.AuthData,((_bstr_t)recordSet->GetCollect("AUTH_DATA")));
        if((record.AuthData[0]!=0)||(record.AuthData[0]==' ')&&(record.AuthData[1]!=0))
        {
            int res=CipherToGMCipher((unsigned char*)record.AuthNewData,sizeof(record.AuthNewData),(unsigned char*)record.UserCode,strlen(record.UserCode),(unsigned char*)record.AuthData,strlen(record.AuthData),(unsigned char *)record.UserCode,strlen(record.UserCode),EM_PLATFORM_W);
            if(res>0)
            {
                record.AuthNewData[res]=0;
            }
            //cout<<record.UserCode<<":"<<record.AuthData<<":"<<record.AuthNewData<<endl;
            return res;
        }
        return 0;
    }

    inline int CSqlServer::commit(_RecordsetPtr recordSet)
    {
        try
        {
            recordSet->MovePrevious();
            recordSet->Update();
        }
        catch(_com_error &e)
        {
            cout<<"commit CiptherToGMCipher error:"<<e.ErrorMessage()<<endl;
            return -1;
        }
        return 0;
    }

    inline int CSqlServer::updateRecord(ST_DataRecord &record,_RecordsetPtr &recordSet)
    {
        try
        {
            recordSet->PutCollect("AUTH_DATA_TYPE",_variant_t("1"));
            recordSet->PutCollect("AUTH_DATA",_variant_t(record.AuthData));
        }
        catch(_com_error &e)
        {
            cout<<"update data error:"<<e.ErrorMessage()<<endl;
            return -1;
        }
        return 0;
    }

    void CSqlServer::traversalResult()
    {
        int res=0;
        ST_DataRecord record;
        cout<<"processing..."<<endl;
        boost::progress_display pd(m_recordCount);
        while(!m_recordSet->adoEOF)
        {
            if(((res=reEncrypt(record,m_recordSet))<0)||((res=updateRecord(record,m_recordSet))<0))
            {
                ++m_contextPtr->getResultPtr()->FailingRecordCount;
                m_contextPtr->getResultPtr()->FailingInfo.push_back(record.UserCode);
            }
            else{
                ++m_contextPtr->getResultPtr()->SuccessfulRecordCount;
            }
            ++pd;
            m_recordSet->MoveNext();
        }
        commit(m_recordSet);
    }

    void CSqlServer::unInitialize()
    {
        ::CoUninitialize();
    }
}