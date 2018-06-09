#if !defined(__kdstoragecrypt_h__)
#define __kdstoragecrypt_h__

#if defined(OS_IS_WINDOWS)
#ifdef  DLLEXPORTS
#define DLLEXPORT _declspec(dllexport)
#else
#define DLLEXPORT _declspec(dllimport)
#endif
#define KBSS_CALLTYPE _cdecl
#else
#define DLLEXPORT
#define KBSS_CALLTYPE
#if !defined(__int64)
#define __int64  long long
#endif
#endif

enum EM_EncryptType
{//��������
	EM_TYPE_KDENCODE = '0',
	EM_TYPE_U		 = '1',
	EM_TYPE_KBSS	 = '2',
	EM_TYPE_SM_S	 = '3',
	EM_TYPE_SM_T	 = '6'
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
�������Ͳ�ѯ�ӿ�

����˵����
		char *pOutType				��������
		int nPlatformType			������Դƽ̨
		unsigned char *pCipherText	����
		int nCipherTextLen			���Ĵ�С

����ֵ˵����
		0							��ѯ�ɹ�
		-1							����Ϊ��

ע:
		����������Ͱ������������ĺͷǹ�������

�޸ļ�¼��
ʱ��			�޸���			�޸�˵��
20180426		��ѧ			��char &chType�ĳ�char *chType����֤��׼C�½ӿڿ���
20180604		��ѧ			1����char *chType�ĳ�char *OutType
								2����unsigned char *pSrcData�ĳ�unsigned char *pCipherText
								3����int nSrcDataLen�ĳ�int nCipherTextLen����������˼��
								4��������char *OutType��˳���������һ��������λ��
20180606						1���������int nPlatformType��ָ����ѯ�����ĵ���Դƽ̨������ֵ�ɲο�EM_PlatformType�Ķ���
*************************************/
int DLLEXPORT KBSS_CALLTYPE QueryType(char *OutType, int nPlatformType, const unsigned char *pCipherText, int nCipherTextLen);

/*************************************
����ͨѶ���ܽӿ�

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

ע:

�޸ļ�¼��
ʱ��			�޸���			�޸�˵��
20180604		��ѧ			�½�
*************************************/
int DLLEXPORT KBSS_CALLTYPE GM_CommEncrypt(unsigned char *pCipherText, int nCipherTextBufLen,
	const unsigned char *pPlainText, int nPlainTextLen,
	const unsigned char *pKey, int nKeyLen);

/*************************************
����ͨѶ���ܽӿ�

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

ע:

�޸ļ�¼��
ʱ��			�޸���			�޸�˵��
20180604		��ѧ			�½�
*************************************/
int DLLEXPORT KBSS_CALLTYPE GM_CommDecrypt(unsigned char *pPlainText, int nPlainTextBufLen,
	const unsigned char *pCipherText, int nCipherTextLen,
	const unsigned char *pKey, int nKeyLen);

/*************************************
���ܴ洢���ܽӿ�

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

ע��

�޸ļ�¼��
ʱ��			�޸���			�޸�˵��
20180604		��ѧ			�½�
*************************************/
int DLLEXPORT KBSS_CALLTYPE GM_Encrypt(unsigned char *pCipherText, int nCipherTextBufLen,
	const unsigned char *pPlainText, int nPlainTextLen,
	const unsigned char *pKey, int nKeyLen);

/*************************************
���ܴ洢����У��ӿ�

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

ע��

�޸ļ�¼��
ʱ��			�޸���			�޸�˵��
20180604		��ѧ			�½�
20180606		��ѧ			���ӿ�������GMCipherTextCheck��ΪGM_CipherCheck
*************************************/
int DLLEXPORT KBSS_CALLTYPE GM_CipherCheck(const unsigned char *pGMCipherText1, int nGMCipherTextLen1,
	const unsigned char *pGMCipherText2, int nGMCipherTextLen2,
	const unsigned char *pKey, int nKeyLen);

/*************************************
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

ע��

�޸ļ�¼��
ʱ��			�޸���			�޸�˵��
20180604		��ѧ			�½�
*************************************/
int DLLEXPORT KBSS_CALLTYPE CipherToGMCipher(unsigned char *pGMCipherText, int nGMCipherTextBufLen,
	const unsigned char *pGMKey, int nGMKeyLen,
	const unsigned char *pCipherText, int nCipherTextLen,
	const unsigned char *pKey, int nKeyLen,
	int nCipherEncryptType);

/***************************************************������win�����нӿ�******************************************************/
/*************************************
ͨѶ�ؼ��ܽӿ�

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

ע��
		ͨѶ�ؼ�����Ҫ�ǻ�һ����Կ�������ټ��ܣ��ӳ��������Ļ���ͨѶ���ģ�����ֻ֧�ֹ���ͨѶ�����ؼ���

�޸ļ�¼��
ʱ��			�޸���			�޸�˵��
20180509		��ѧ			�½�
20180605		��ѧ			1���޸ķ���ֵ˵��
								2����void *pOldKey��Ϊunsigned char *pOldKey��void *pNewKey��Ϊunsigned char *pNewKey
								3��ȥ��int nOldEncode_Level��int nNewEncode_Level��������
20180606		��ѧ			1���޸Ľӿ��߼���ʹ��֧��kdencode�͹������ּ��ܿ���ܵ�ͨѶ���ĵĽ���
*************************************/
int DLLEXPORT KBSS_CALLTYPE Conn_ReEncodeChgKey(unsigned char *pSrcData, int nSrcDataLen,
	unsigned char *pDestData, int nDestDataBufLen,
	unsigned char *pOldKey, int nOldKeyLen,
	unsigned char *pNewKey, int nNewKeyLen);

/*************************************
У��ӿ�

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
		0						У��ɹ�
		-1						У��ʧ��
		-2						����Ϊ��
		-3						��ԿΪ��
		-4						���Ľ���ʧ��
		-5						����ʧ��
		-6						���Ļ���������
		-7						�޷�ʶ�����������
		-8						����Ϊ��ͨѶ���ģ���֧��
		-9						��ȡSWDES.dll���SW_PasswdOK�ӿ�ʧ��
		-10						����SWDES.dllʧ��
		-11						��ǰĿ¼��û��SWDES.dll

ע��
	��Ҫ����ͨѶ�����������Դ�洢����֮���У��

�޸ļ�¼��
ʱ��			�޸���			�޸�˵��
20180509		��ѧ			�½�
20180605		��ѧ			1���޸ķ���ֵ˵��
								2��ȥ��int nEncode_Level��char *chType��������
								3����void *pKey��Ϊunsigned char *pKey, void *pCustID��Ϊunsigned char *pCustID
20180606		��ѧ			1���޸Ľӿ��߼���ʹ��֧��kdencode�͹������ֿ���ܳ�����ͨѶ���ĵĽ���
*************************************/
int DLLEXPORT KBSS_CALLTYPE Crypt_Check2_SWHY(unsigned char *pTCiphertext, int nTCiphertextLen,
	unsigned char *pSWCiphertext, int nSWCiphertextLen,
	unsigned char *pKey, int nKeyLen,
	unsigned char *pCustID, int nCustIDLen);

#ifdef __cplusplus
}
#endif

#endif  // __kdstoragecrypt_h__
