/**
 * @file Oracle.h
 * @brief Oracle������
 * @author shlian
 * @version 1.0
 * @date 2018/06/13
 */
#pragma once
#include <map>

#include <boost/atomic.hpp>
#include <boost/thread/condition.hpp>

#include "occi.h"
#include "common.h"
#include "IDataAccess.h"

namespace kingdom{

    /**
     * @brief oracle ���ݿ������
     */
    class COracle:public IDataAccess
    {
    public:
        COracle();
        virtual ~COracle();

    protected:

        virtual int initialize(ContextPtr contextPtr);
        virtual int connect();
        virtual int close();
        virtual int query();
        virtual void traversalResult();
        virtual void unInitialize();

    private:
        oracle::occi::Environment *m_env;
        oracle::occi::Connection *m_con;
        oracle::occi::Statement *m_stat;
        oracle::occi::ResultSet *m_recordSet;
        ST_ConnectionContext<oracle::occi::Connection*> m_ConnectionContext;
        std::string m_conStr;

        /**
         * @brief �����ݿ��ȡ����
         *
         * @param[in] record �洢���ݵı���
         */
        inline void fetchData(ST_DataRecord &record);

        /**
         * @brief �������ݵ����ݿ�
         */
        void updateRecord();
    };
}

