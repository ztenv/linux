#if !defined(__kdstoragecrypt_h__)
#define __kdstoragecrypt_h__

#if defined(OS_IS_WINDOWS)
#ifdef  DLLEXPORTS
#define DLLEXPORT _declspec(dllexport)
#else
#define DLLEXPORT _declspec(dllimport)
#endif
#define GM_CALLTYPE _cdecl
#else
#define DLLEXPORT
#define GM_CALLTYPE
#if !defined(__int64)
#define __int64  long long
#endif
#endif

enum EM_EncryptType
{//��������
	EM_TYPE_SM_S = '0',
	EM_TYPE_SM_C = '1',
	EM_TYPE_NON_SM = '2'
};

enum EM_PlatformType
{
	EM_PLATFORM_KBSS = 0,
	EM_PLATFORM_W    = 1,
	EM_PLATFORM_U    = 2
};

#ifdef __cplusplus
extern "C"
{
#endif

/*************************************
����˵����
		�������Ͳ�ѯ

����˵����
		char *pOutType				��������
		unsigned char *pCipherText	����
		int nCipherTextLen			���Ĵ�С

����ֵ˵����
		0							��ѯ�ɹ�
		-1							����Ϊ��
		-2							�ǹ�������
*************************************/
int DLLEXPORT GM_CALLTYPE QueryType(char *OutType, const unsigned char *pCipherText, int nCipherTextLen);

/*************************************
����˵����
		����ͨѶ����

����˵����
		unsigned char *pCipherText	����
		int nCipherTextBufLen		���Ļ�������С
		unsigned char *pPlainText	����
		int nPlainTextLen			���Ĵ�С
		unsigned char *pKey			��Կ
		int nKeyLen					��Կ��С

����ֵ˵����
		����0��������				���ܳɹ������������ĳ���
		-1							����ʧ��
		-2							����Ϊ��
		-3							��ԿΪ��
		-4							���Ļ���������
*************************************/
int DLLEXPORT GM_CALLTYPE GM_CommEncrypt(unsigned char *pCipherText, int nCipherTextBufLen,
	const unsigned char *pPlainText, int nPlainTextLen,
	const unsigned char *pKey, int nKeyLen);

/*************************************
����˵����
		����ͨѶ����

����˵����
		unsigned char *pPlainText	����
		int nPlainTextBufLen		���Ļ�������С
		unsigned char *pCipherText	����
		int nCipherTextLen			���Ĵ�С
		unsigned char *pKey			��Կ
		int nKeyLen					��Կ��С

����ֵ˵����
		����0��������				���ܳɹ������������ĳ���
		-1							����ʧ��
		-2							����Ϊ��
		-3							��ԿΪ��
		-4							���Ļ���������
*************************************/
int DLLEXPORT GM_CALLTYPE GM_CommDecrypt(unsigned char *pPlainText, int nPlainTextBufLen,
	const unsigned char *pCipherText, int nCipherTextLen,
	const unsigned char *pKey, int nKeyLen);

/*************************************
����˵����
		���ܴ洢����

����˵����
		unsigned char *pCipherText	����
		int nCipherTextBufLen		���Ļ�������С
		unsigned char *pPlainText	����
		int nPlainTextLen			���Ĵ�С
		unsigned char *pKey			��Կ
		int nKeyLen					��Կ��С

����ֵ˵����
		����0��������				���ܳɹ������������ĳ���
		-1							����ʧ��
		-2							����Ϊ��
		-3							��ԿΪ��
		-4							���Ļ���������
*************************************/
int DLLEXPORT GM_CALLTYPE GM_Encrypt(unsigned char *pCipherText, int nCipherTextBufLen,
	const unsigned char *pPlainText, int nPlainTextLen,
	const unsigned char *pKey, int nKeyLen);

/*************************************
����˵����
		���ܴ洢����У��

����˵����
		unsigned char * pGMCipherText1	��������1
		int nGMCipherTextLen1			��������1��С
		unsigned char * pGMCipherText2	��������2
		int nGMCipherTextLen2			��������2��С
		unsigned char *pKey				��Կ
		int nKeyLen						��Կ��С

����ֵ˵����
		0								У��ɹ�
		-1								У��ʧ��
		-2								����Ϊ��
		-3								��ԿΪ��
		-4								���Ľ���ʧ��
		-5								�ǹ�������
		-6								�ǹ��ܴ洢����
*************************************/
int DLLEXPORT GM_CALLTYPE GM_CipherCheck(const unsigned char *pGMCipherText1, int nGMCipherTextLen1,
	const unsigned char *pGMCipherText2, int nGMCipherTextLen2,
	const unsigned char *pKey, int nKeyLen);

/*************************************
����˵����
		�洢����ת���ܴ洢���Ľӿ�

����˵����
		unsigned char * pGMCipherText	���ܴ洢����
		int nGMCipherTextBufLen			���Ļ�������С
		unsigned char *pGMKey			��Կ
		int nGMKeyLen					��Կ��С
		unsigned char *pCipherText		�洢����
		int nCipherTextLen				���Ĵ�С
		unsigned char *pKey				��Կ
		int nKeyLen						��Կ��С
		int nCipherEncryptType			���ļ��ܷ�ʽ(����ֵ�ɲο�EM_PlatformType�Ķ���)

����ֵ˵����
		����0��������					ת���ɹ������������ĵĳ���
		-1								ת��ʧ��
		-2								����Ϊ��
		-3								��ԿΪ��
		-4								���Ľ���ʧ��
		-5								����ʧ��
		-6								���Ļ���������
*************************************/
int DLLEXPORT GM_CALLTYPE CipherToGMCipher(unsigned char *pGMCipherText, int nGMCipherTextBufLen,
	const unsigned char *pGMKey, int nGMKeyLen,
	const unsigned char *pCipherText, int nCipherTextLen,
	const unsigned char *pKey, int nKeyLen,
	int nCipherEncryptType);

/***************************************************������win�����нӿ�******************************************************/
/*************************************
����˵����
		ͨѶ�ؼ���

����˵����
		unsigned char *pSrcData		��Ҫ���ܵ�Դ��
		int nSrcDataLen				��Ҫ����Դ�ĵĳ���
		unsigned char *pDestData	���Ļ�����
		int nDestDataBufLen			���Ļ������Ĵ�С
		int nOldEncode_Level		ԭ���ܼ���
		void *pOldKey				ԭ��Կ
		int nOldKeyLen				ԭ��Կ�ĳ���
		int nNewEncode_Level		�¼��ܼ���
		void *pNewKey				����Կ
		int nNewKeyLen				����Կ�ĳ���

����ֵ˵����						
		����0��������		�ؼ��ܳɹ������������ĳ���
		-1					�ؼ���ʧ��
		-2					����Ϊ��
		-3					��ԿΪ��
		-4					���Ľ���ʧ��
		-5					����ʧ��
		-6					���Ļ���������
		-7					�޷�ʶ�����������
		-8					����Ϊ��ͨѶ���ģ���֧��
*************************************/
int DLLEXPORT GM_CALLTYPE Comm_ReEncodeChgKey(unsigned char *pSrcData, int nSrcDataLen,
	unsigned char *pDestData, int nDestDataBufLen,
	unsigned char *pOldKey, int nOldKeyLen,
	unsigned char *pNewKey, int nNewKeyLen);

/*************************************
����˵����
		У��ӿ�(��������У��)

����˵����
		unsigned char *pTCiphertext		ͨѶ����
		int nTCiphertextLen				ͨѶ���ĵĳ���
		unsigned char *pSWCiphertext	�洢����
		int nSWCiphertextLen			�洢���ĵĳ���
		void *pKey						��Կ
		int nKeyLen						��Կ�ĳ���
		void *pCustID					�ͻ�����
		int nCustIDLen					�ͻ�����ĳ���

����ֵ˵����
		0					У��ɹ�
		-1					У��ʧ��
		-2					����Ϊ��
		-3					��ԿΪ��
		-4					���Ľ���ʧ��
		-5					����ʧ��
		-6					���Ļ���������
		-7					�޷�ʶ�����������
		-8					����Ϊ��ͨѶ���ģ���֧��
		-9					��ȡSWDES.dll���SW_PasswdOK�ӿ�ʧ��
		-10					����SWDES.dllʧ��
		-11					��ǰĿ¼��û��SWDES.dll
*************************************/
int DLLEXPORT GM_CALLTYPE CipherCheck_SWHY(unsigned char *pTCiphertext, int nTCiphertextLen,
	unsigned char *pSWCiphertext, int nSWCiphertextLen,
	unsigned char *pKey, int nKeyLen,
	unsigned char *pCustID, int nCustIDLen);

#ifdef __cplusplus
}
#endif

#endif  // __kdstoragecrypt_h__
