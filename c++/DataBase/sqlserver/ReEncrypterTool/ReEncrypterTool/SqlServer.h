/**
 * @file SqlServer.h
 * @brief SqlServer访问类
 * @author shlian
 * @version 1.0
 * @date 2018/06/08
 */
#pragma once
#include "IDataAccess.h"
#include "common.h"
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

        virtual int initialize(ContextPtr contextPtr);
        virtual int connect();
        virtual int close();
        virtual int query();
        virtual void traversalResult();
        virtual void unInitialize();
    private:
        _ConnectionPtr m_connection;
        _RecordsetPtr m_recordSet;

        /**
         * @brief 重加密，把AUTH_DATA的原始密文转换为国密密文
         *
         * @param[in] record    当前数据记录
         * @param[in] recordSet 数据记录集
         *
         * @return 0:成功，非0:失败
         */
        inline int reEncrypt(ST_DataRecord &record,_RecordsetPtr &recordSet);

        /**
         * @brief 更新数据记录,把国密密文及密码类型写到数据库
         *
         * @param[in] record   当前数据记录
         * @param[in] recordSet 数据记录集
         *
         * @return 0:成功，非0:失败
         */
        inline int updateRecord(ST_DataRecord &record,_RecordsetPtr &recordSet);

        /**
         * @brief 提交数据
         *
         * @param[in] recordSet 数据记录集
         *
         * @return 0:成功，非0:失败
         */
        inline int commit(_RecordsetPtr recordSet);
    };

}

