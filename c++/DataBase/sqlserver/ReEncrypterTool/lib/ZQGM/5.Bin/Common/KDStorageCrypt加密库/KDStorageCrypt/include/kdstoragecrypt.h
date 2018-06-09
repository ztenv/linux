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
{//加密类型
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
密文类型查询接口

参数说明：
		char *pOutType				密文类型
		int nPlatformType			密文来源平台
		unsigned char *pCipherText	密文
		int nCipherTextLen			密文大小

返回值说明：
		0							查询成功
		-1							密文为空

注:
		检查密文类型包括：国密密文和非国密密文

修改记录：
时间			修改人			修改说明
20180426		李学			将char &chType改成char *chType，保证标准C下接口可用
20180604		李学			1、将char *chType改成char *OutType
								2、将unsigned char *pSrcData改成unsigned char *pCipherText
								3、将int nSrcDataLen改成int nCipherTextLen，做到见名思意
								4、将出参char *OutType的顺序调整到第一个参数的位置
20180606						1、增加入参int nPlatformType，指定查询的密文的来源平台，其送值可参看EM_PlatformType的定义
*************************************/
int DLLEXPORT KBSS_CALLTYPE QueryType(char *OutType, int nPlatformType, const unsigned char *pCipherText, int nCipherTextLen);

/*************************************
国密通讯加密接口

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

注:

修改记录：
时间			修改人			修改说明
20180604		李学			新建
*************************************/
int DLLEXPORT KBSS_CALLTYPE GM_CommEncrypt(unsigned char *pCipherText, int nCipherTextBufLen,
	const unsigned char *pPlainText, int nPlainTextLen,
	const unsigned char *pKey, int nKeyLen);

/*************************************
国密通讯解密接口

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

注:

修改记录：
时间			修改人			修改说明
20180604		李学			新建
*************************************/
int DLLEXPORT KBSS_CALLTYPE GM_CommDecrypt(unsigned char *pPlainText, int nPlainTextBufLen,
	const unsigned char *pCipherText, int nCipherTextLen,
	const unsigned char *pKey, int nKeyLen);

/*************************************
国密存储加密接口

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

注：

修改记录：
时间			修改人			修改说明
20180604		李学			新建
*************************************/
int DLLEXPORT KBSS_CALLTYPE GM_Encrypt(unsigned char *pCipherText, int nCipherTextBufLen,
	const unsigned char *pPlainText, int nPlainTextLen,
	const unsigned char *pKey, int nKeyLen);

/*************************************
国密存储密文校验接口

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

注：

修改记录：
时间			修改人			修改说明
20180604		李学			新建
20180606		李学			将接口名称由GMCipherTextCheck改为GM_CipherCheck
*************************************/
int DLLEXPORT KBSS_CALLTYPE GM_CipherCheck(const unsigned char *pGMCipherText1, int nGMCipherTextLen1,
	const unsigned char *pGMCipherText2, int nGMCipherTextLen2,
	const unsigned char *pKey, int nKeyLen);

/*************************************
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

注：

修改记录：
时间			修改人			修改说明
20180604		李学			新建
*************************************/
int DLLEXPORT KBSS_CALLTYPE CipherToGMCipher(unsigned char *pGMCipherText, int nGMCipherTextBufLen,
	const unsigned char *pGMKey, int nGMKeyLen,
	const unsigned char *pCipherText, int nCipherTextLen,
	const unsigned char *pKey, int nKeyLen,
	int nCipherEncryptType);

/***************************************************以下是win版特有接口******************************************************/
/*************************************
通讯重加密接口

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

注：
		通讯重加密主要是换一种密钥对明文再加密，加出来的密文还是通讯密文，而且只支持国密通讯密文重加密

修改记录：
时间			修改人			修改说明
20180509		李学			新建
20180605		李学			1、修改返回值说明
								2、将void *pOldKey改为unsigned char *pOldKey，void *pNewKey改为unsigned char *pNewKey
								3、去掉int nOldEncode_Level和int nNewEncode_Level两个参数
20180606		李学			1、修改接口逻辑，使其支持kdencode和国密两种加密库加密的通讯密文的解密
*************************************/
int DLLEXPORT KBSS_CALLTYPE Conn_ReEncodeChgKey(unsigned char *pSrcData, int nSrcDataLen,
	unsigned char *pDestData, int nDestDataBufLen,
	unsigned char *pOldKey, int nOldKeyLen,
	unsigned char *pNewKey, int nNewKeyLen);

/*************************************
校验接口

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
		0						校验成功
		-1						校验失败
		-2						密文为空
		-3						密钥为空
		-4						密文解密失败
		-5						加密失败
		-6						密文缓冲区不足
		-7						无法识别的密文类型
		-8						密文为非通讯密文，不支持
		-9						获取SWDES.dll里的SW_PasswdOK接口失败
		-10						加载SWDES.dll失败
		-11						当前目录下没有SWDES.dll

注：
	主要用于通讯密文与申万宏源存储密文之间的校验

修改记录：
时间			修改人			修改说明
20180509		李学			新建
20180605		李学			1、修改返回值说明
								2、去掉int nEncode_Level和char *chType两个参数
								3、将void *pKey改为unsigned char *pKey, void *pCustID改为unsigned char *pCustID
20180606		李学			1、修改接口逻辑，使其支持kdencode和国密两种库加密出来的通讯密文的解密
*************************************/
int DLLEXPORT KBSS_CALLTYPE Crypt_Check2_SWHY(unsigned char *pTCiphertext, int nTCiphertextLen,
	unsigned char *pSWCiphertext, int nSWCiphertextLen,
	unsigned char *pKey, int nKeyLen,
	unsigned char *pCustID, int nCustIDLen);

#ifdef __cplusplus
}
#endif

#endif  // __kdstoragecrypt_h__
