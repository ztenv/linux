/**
 * @file SqlServer.h
 * @brief SqlServer访问类
 * @author shlian
 * @version 1.0
 * @date 2018/06/08
 */
#pragma once

#ifdef _WIN32
#include <map>

#include "common.h"
#include "IDataAccess.h"

#import "c:\Program Files\Common Files\System\ado\msado15.dll" no_namespace rename("EOF","adoEOF") rename("BOF","adoBOF")

namespace kingdom{

    /**
     * @brief mssql server数据库访问类
     */
    class CSqlServer:public IDataAccess
    {
    public:
        CSqlServer();
        virtual ~CSqlServer();

    protected:
        _ConnectionPtr m_readConnection;
        _RecordsetPtr m_recordSet;
        ST_ConnectionContext<_ConnectionPtr> m_ConnectionContext;

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
#endif
