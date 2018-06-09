#if !defined(__kdencodecli_h__)
#define __kdencodecli_h__

/*************************************
Version : 1.1.0.1
*************************************/

#define KDCOMPLEX_ENCODE 6

#if defined(OS_IS_WINDOWS)
#ifdef  DLLEXPORTS
#define DLLEXPORT _declspec(dllexport)
#else
#define DLLEXPORT _declspec(dllimport)
#endif
#define STD_CALLTYPE _cdecl
#else
#define DLLEXPORT __attribute__((visibility("default")))
#define STD_CALLTYPE
#endif

enum EM_EncryptType
{//��������
	EM_TYPE_KDENCODE = '0',
	EM_TYPE_U = '1',
	EM_TYPE_KBSS = '2',
	EM_TYPE_SM_S = '3',
	EM_TYPE_SM_T = '6'
};

#ifdef __cplusplus
extern "C" {
#endif

/*************************************
int nEncode_Level			���ܼ���
unsigned char *pSrcData		��Ҫ���ܵ�Դ��
int nSrcDataLen				��Ҫ����Դ�ĵĳ���
unsigned char *pDestData	���Ļ�����
int nDestDataBufLen			���Ļ������Ĵ�С
void *pKey					��Կ
int nKeyLen					��Կ�ĳ���

����ֵ						�������ĵĳ���

ע:
	���ܼ��� = KDCOMPLEX_ENCODE ʱ
	���Ļ������Ĵ�СnDestDataBufLen = 2*nSrcDataLen(����Դ�ĵĳ���)����nDestDataBufLen>= 32
	��������Ϊ0x00��βASCII�ַ���
*************************************/
int DLLEXPORT STD_CALLTYPE KDEncode(int nEncode_Level,
	unsigned char *pSrcData, int nSrcDataLen, 
	unsigned char *pDestData, int nDestDataBufLen, 
	void *pKey, int nKeyLen);

#ifdef __cplusplus
}
#endif

#endif

