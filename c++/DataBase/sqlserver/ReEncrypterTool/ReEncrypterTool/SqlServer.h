/**
 * @file SqlServer.h
 * @brief SqlServer������
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

    /**
     * @brief ���ӳ�������
     */
    struct ST_ConnectionContext
    {
        /**
         * @brief �̡߳����ݿ����ӵ�����
         */
        static const size_t ThreadCount=4;
        /**
         * @brief �����ӳ�
         */
        ConnectionPoolMap ConnectionPool;
        /**
         * @brief ���̳߳�
         */
        boost::thread_group ThreadGroup;
    };

    /**
     * @brief mssql server���ݿ������
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

        /**
         * @brief ��ʼ����
         *
         * @param[in] con ���ݿ������
         */
        inline void beginTrans(_ConnectionPtr con);

        /**
         * @brief �ύ�¼�
         *
         * @param[in] con ���ݿ�����
         */
        inline void commitTrans(_ConnectionPtr con);

        /**
         * @brief ��ȡ����
         *
         * @param[in] record �洢���ݵĶ���
         */
        inline void fetchData(ST_DataRecord &record);

        /**
         * @brief �������ݿ�ļ�¼
         */
        inline void updateRecord();

    };

}

