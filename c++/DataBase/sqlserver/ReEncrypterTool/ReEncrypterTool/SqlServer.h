/**
 * @file SqlServer.h
 * @brief SqlServer访问类
 * @author shlian
 * @version 1.0
 * @date 2018/06/08
 */
#pragma once
#include <map>

#include "IDataAccess.h"
#include "common.h"

#import "c:\Program Files\Common Files\System\ado\msado15.dll" no_namespace rename("EOF","adoEOF") rename("BOF","adoBOF")

namespace kingdom{
    typedef std::map<boost::thread::id,_ConnectionPtr> ConnectionPoolMap;

    struct ST_ConnectionContext
    {
        static const size_t ThreadCount=4;
        ConnectionPoolMap ConnectionPool;
        boost::thread_group ThreadGroup;
    };

    /**
     * @brief mssql server数据库访问类
     */
    class CSqlServer:public IDataAccess
    {
    public:
        CSqlServer();
        virtual ~CSqlServer();

    protected:
        _ConnectionPtr m_connection;
        _RecordsetPtr m_recordSet;
        ST_ConnectionContext m_ConnectionContext;

        virtual int initialize(ContextPtr contextPtr);
        virtual int connect();
        virtual int close();
        virtual int query();
        virtual void traversalResult();
        virtual void unInitialize();
    private:
        inline void beginTrans(_ConnectionPtr con);
        inline void commitTrans(_ConnectionPtr con);
        inline void fetchData(ST_DataRecord &record);
        inline void updateRecord();

    };

}

