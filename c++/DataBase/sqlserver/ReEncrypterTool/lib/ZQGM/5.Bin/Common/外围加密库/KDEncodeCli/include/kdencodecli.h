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
{//加密类型
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
int nEncode_Level			加密级别
unsigned char *pSrcData		需要加密的源文
int nSrcDataLen				需要加密源文的长度
unsigned char *pDestData	密文缓冲区
int nDestDataBufLen			密文缓冲区的大小
void *pKey					密钥
int nKeyLen					密钥的长度

返回值						生成密文的长度

注:
	加密级别 = KDCOMPLEX_ENCODE 时
	密文缓冲区的大小nDestDataBufLen = 2*nSrcDataLen(加密源文的长度)并且nDestDataBufLen>= 32
	生成密文为0x00结尾ASCII字符串
*************************************/
int DLLEXPORT STD_CALLTYPE KDEncode(int nEncode_Level,
	unsigned char *pSrcData, int nSrcDataLen, 
	unsigned char *pDestData, int nDestDataBufLen, 
	void *pKey, int nKeyLen);

#ifdef __cplusplus
}
#endif

#endif

