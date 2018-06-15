/**
 * @file IDataAccess.h
 * @brief ���ݿ���ʽӿ�
 * @author shlian
 * @version 1.0
 * @date 2018/06/08
 */
#pragma once
#include <boost/shared_ptr.hpp>
#include <boost/thread/shared_mutex.hpp>
#include <boost/atomic.hpp>
#include <boost/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/thread/condition_variable.hpp>

#include "common.h"

namespace kingdom{

    /**
     * @brief ���ݿ������
     */
    class IDataAccess
    {
    public:
        IDataAccess();
        virtual ~IDataAccess();

        /**
         * @brief ִ�����ݿ�ĳ�ʼ�������ӡ���ѯ���������رա�����ʼ��
         *
         * @param[in] contextPtr ������
         *
         * @return 0:�ɹ�����0:ʧ��
         */
        int doWork(ContextPtr contextPtr);

    protected:
        /**
         * @brief ��ˮλ
         */
        static const size_t HIGHT_WATER_LEVEL=500000;

        /**
         * @brief ��ˮλ
         */
        static const size_t LOW_WATER_LEVEL=10000;

        /**
         * @brief ��������Ϣ
         */
        ContextPtr m_contextPtr;

        /**
         * @brief ��ѯ���ļ�¼��
         */
        long m_recordCount;

        /**
         * @brief ��¼�б�
         */
        DataRecordList m_list;

        /**
         * @brief �߳���Ҫ�Ļ����Ƿ����
         */
        boost::atomic<bool> m_isReady;

        /**
         * @brief �̵߳ȴ�����������
         */
        boost::condition_variable m_cv;

        /**
         * @brief m_list��m_cv�Ļ�����
         */
        boost::mutex m_mutex;

        /**
         * @brief ����״̬
         */
        boost::atomic<bool> m_runFlag;

        /**
        * @brief �ؼ��ܣ���AUTH_DATA��ԭʼ����ת��Ϊ��������
        *
        * @param[in] record    ��ǰ���ݼ�¼
        *
        * @return ����0:�ɹ���С�ڵ���0:ʧ��
        */
        int reEncrypt(ST_DataRecord &record);

        /**
         * @brief ��ʼ�����ݿ�
         *
         * @param[in] contextPtr ������ָ��
         *
         * @return 0:�ɹ�,��0:ʧ��
         */
        virtual int initialize(ContextPtr contextPtr)=0;

        /**
         * @brief �������ݿ�
         *
         * @return 0:�ɹ�,��0:ʧ��
         */
        virtual int connect()=0;

        /**
         * @brief �ر����ݿ�
         *
         * @return 0:�ɹ�,��0:ʧ��
         */
        virtual int close()=0;

        /**
         * @brief ��ѯ
         *
         * @return 0:�ɹ�,��0:ʧ��
         */
        virtual int query()=0;

        /**
         * @brief ������ѯ���
         */
        virtual void traversalResult()=0;

        /**
         * @brief ����ʼ��
         */
        virtual void unInitialize()=0;

        /**
         * @brief �ȴ�
         *
         * @param[in] mu ��
         * @param[in] cv ����
         */
        void wait(boost::mutex &mu,boost::condition_variable &cv)
        {
            boost::unique_lock<boost::mutex> locker(mu);
            while(m_list.size()>HIGHT_WATER_LEVEL)
            {
                cv.wait(locker);
            }
        }

        /**
         * @brief ֪ͨ
         *
         * @param[in] mu ��
         * @param[in] cv ����
         */
        void notify(boost::mutex &mu,boost::condition_variable &cv)
        {
            boost::unique_lock<boost::mutex> locker(mu);
            if(m_list.size()<LOW_WATER_LEVEL)
            {
                cv.notify_all();
            }
        }
    };
    typedef boost::shared_ptr<IDataAccess> IDataAccessPtr;
}
