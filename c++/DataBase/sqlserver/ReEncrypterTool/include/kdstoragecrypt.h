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
{//加密类型
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
功能说明：
		密文类型查询

参数说明：
		char *pOutType				密文类型
		unsigned char *pCipherText	密文
		int nCipherTextLen			密文大小

返回值说明：
		0							查询成功
		-1							密文为空
		-2							非国密密文
*************************************/
int DLLEXPORT GM_CALLTYPE QueryType(char *OutType, const unsigned char *pCipherText, int nCipherTextLen);

/*************************************
功能说明：
		国密通讯加密

参数说明：
		unsigned char *pCipherText	密文
		int nCipherTextBufLen		密文缓冲区大小
		unsigned char *pPlainText	明文
		int nPlainTextLen			明文大小
		unsigned char *pKey			密钥
		int nKeyLen					密钥大小

返回值说明：
		大于0的正整数				加密成功，并返回密文长度
		-1							加密失败
		-2							明文为空
		-3							密钥为空
		-4							密文缓冲区不足
*************************************/
int DLLEXPORT GM_CALLTYPE GM_CommEncrypt(unsigned char *pCipherText, int nCipherTextBufLen,
	const unsigned char *pPlainText, int nPlainTextLen,
	const unsigned char *pKey, int nKeyLen);

/*************************************
功能说明：
		国密通讯解密

参数说明：
		unsigned char *pPlainText	明文
		int nPlainTextBufLen		明文缓冲区大小
		unsigned char *pCipherText	密文
		int nCipherTextLen			密文大小
		unsigned char *pKey			密钥
		int nKeyLen					密钥大小

返回值说明：
		大于0的正整数				解密成功，并返回明文长度
		-1							解密失败
		-2							密文为空
		-3							密钥为空
		-4							明文缓冲区不足
*************************************/
int DLLEXPORT GM_CALLTYPE GM_CommDecrypt(unsigned char *pPlainText, int nPlainTextBufLen,
	const unsigned char *pCipherText, int nCipherTextLen,
	const unsigned char *pKey, int nKeyLen);

/*************************************
功能说明：
		国密存储加密

参数说明：
		unsigned char *pCipherText	密文
		int nCipherTextBufLen		密文缓冲区大小
		unsigned char *pPlainText	明文
		int nPlainTextLen			明文大小
		unsigned char *pKey			密钥
		int nKeyLen					密钥大小

返回值说明：
		大于0的正整数				加密成功，并返回密文长度
		-1							加密失败
		-2							明文为空
		-3							密钥为空
		-4							密文缓冲区不足
*************************************/
int DLLEXPORT GM_CALLTYPE GM_Encrypt(unsigned char *pCipherText, int nCipherTextBufLen,
	const unsigned char *pPlainText, int nPlainTextLen,
	const unsigned char *pKey, int nKeyLen);

/*************************************
功能说明：
		国密存储密文校验

参数说明：
		unsigned char * pGMCipherText1	国密密文1
		int nGMCipherTextLen1			国密密文1大小
		unsigned char * pGMCipherText2	国密密文2
		int nGMCipherTextLen2			国密密文2大小
		unsigned char *pKey				密钥
		int nKeyLen						密钥大小

返回值说明：
		0								校验成功
		-1								校验失败
		-2								密文为空
		-3								密钥为空
		-4								密文解密失败
		-5								非国密密文
		-6								非国密存储密文
*************************************/
int DLLEXPORT GM_CALLTYPE GM_CipherCheck(const unsigned char *pGMCipherText1, int nGMCipherTextLen1,
	const unsigned char *pGMCipherText2, int nGMCipherTextLen2,
	const unsigned char *pKey, int nKeyLen);

/*************************************
功能说明：
		存储密文转国密存储密文接口

参数说明：
		unsigned char * pGMCipherText	国密存储密文
		int nGMCipherTextBufLen			密文缓冲区大小
		unsigned char *pGMKey			密钥
		int nGMKeyLen					密钥大小
		unsigned char *pCipherText		存储密文
		int nCipherTextLen				密文大小
		unsigned char *pKey				密钥
		int nKeyLen						密钥大小
		int nCipherEncryptType			密文加密方式(其送值可参看EM_PlatformType的定义)

返回值说明：
		大于0的正整数					转换成功，并返回密文的长度
		-1								转换失败
		-2								密文为空
		-3								密钥为空
		-4								密文解密失败
		-5								加密失败
		-6								密文缓冲区不足
*************************************/
int DLLEXPORT GM_CALLTYPE CipherToGMCipher(unsigned char *pGMCipherText, int nGMCipherTextBufLen,
	const unsigned char *pGMKey, int nGMKeyLen,
	const unsigned char *pCipherText, int nCipherTextLen,
	const unsigned char *pKey, int nKeyLen,
	int nCipherEncryptType);

/***************************************************以下是win版特有接口******************************************************/
/*************************************
功能说明：
		通讯重加密

参数说明：
		unsigned char *pSrcData		需要加密的源文
		int nSrcDataLen				需要加密源文的长度
		unsigned char *pDestData	密文缓冲区
		int nDestDataBufLen			密文缓冲区的大小
		int nOldEncode_Level		原加密级别
		void *pOldKey				原密钥
		int nOldKeyLen				原密钥的长度
		int nNewEncode_Level		新加密级别
		void *pNewKey				新密钥
		int nNewKeyLen				新密钥的长度

返回值说明：						
		大于0的正整数		重加密成功，并返回密文长度
		-1					重加密失败
		-2					密文为空
		-3					密钥为空
		-4					密文解密失败
		-5					加密失败
		-6					密文缓冲区不足
		-7					无法识别的密文类型
		-8					密文为非通讯密文，不支持
*************************************/
int DLLEXPORT GM_CALLTYPE Comm_ReEncodeChgKey(unsigned char *pSrcData, int nSrcDataLen,
	unsigned char *pDestData, int nDestDataBufLen,
	unsigned char *pOldKey, int nOldKeyLen,
	unsigned char *pNewKey, int nNewKeyLen);

/*************************************
功能说明：
		校验接口(申万密码校验)

参数说明：
		unsigned char *pTCiphertext		通讯密文
		int nTCiphertextLen				通讯密文的长度
		unsigned char *pSWCiphertext	存储密文
		int nSWCiphertextLen			存储密文的长度
		void *pKey						密钥
		int nKeyLen						密钥的长度
		void *pCustID					客户代码
		int nCustIDLen					客户代码的长度

返回值说明：
		0					校验成功
		-1					校验失败
		-2					密文为空
		-3					密钥为空
		-4					密文解密失败
		-5					加密失败
		-6					密文缓冲区不足
		-7					无法识别的密文类型
		-8					密文为非通讯密文，不支持
		-9					获取SWDES.dll里的SW_PasswdOK接口失败
		-10					加载SWDES.dll失败
		-11					当前目录下没有SWDES.dll
*************************************/
int DLLEXPORT GM_CALLTYPE CipherCheck_SWHY(unsigned char *pTCiphertext, int nTCiphertextLen,
	unsigned char *pSWCiphertext, int nSWCiphertextLen,
	unsigned char *pKey, int nKeyLen,
	unsigned char *pCustID, int nCustIDLen);

#ifdef __cplusplus
}
#endif

#endif  // __kdstoragecrypt_h__
