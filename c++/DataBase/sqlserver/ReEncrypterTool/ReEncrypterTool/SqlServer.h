/**
 * @file SqlServer.h
 * @brief SqlServer������
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
     * @brief mssql server���ݿ������
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
         * @brief �ؼ��ܣ���AUTH_DATA��ԭʼ����ת��Ϊ��������
         *
         * @param[in] record    ��ǰ���ݼ�¼
         * @param[in] recordSet ���ݼ�¼��
         *
         * @return 0:�ɹ�����0:ʧ��
         */
        inline int reEncrypt(ST_DataRecord &record,_RecordsetPtr &recordSet);

        /**
         * @brief �������ݼ�¼,�ѹ������ļ���������д�����ݿ�
         *
         * @param[in] record   ��ǰ���ݼ�¼
         * @param[in] recordSet ���ݼ�¼��
         *
         * @return 0:�ɹ�����0:ʧ��
         */
        inline int updateRecord(ST_DataRecord &record,_RecordsetPtr &recordSet);

        /**
         * @brief �ύ����
         *
         * @param[in] recordSet ���ݼ�¼��
         *
         * @return 0:�ɹ�����0:ʧ��
         */
        inline int commit(_RecordsetPtr recordSet);
    };

}

