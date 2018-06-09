#if !defined(__encrypt_h__)
#define __encrypt_h__

#if defined(OS_IS_WINDOWS)
#ifdef  DLLEXPORTS
#define DLLEXPORT _declspec(dllexport)
#else
#define DLLEXPORT _declspec(dllimport)
#endif
#define STD_CALLTYPE _cdecl
#else
#define DLLEXPORT
#define STD_CALLTYPE
#if !defined(__int64)
#define __int64  long long
#endif
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
extern "C"
{
#endif

// 函数名称：AES_Encrypt1
// 功能描述：AES加密算法
// 参数说明：p_pszEncrResult  [out]    密文
//           p_iSize          [in]     密文缓冲区大小
//           p_llKey          [in]     密钥，如用户代码
//           p_pszEncrInfo    [in]     明文
// 返回说明：(空)
// 函数备注：前后台加解密认证数据时用
void DLLEXPORT STD_CALLTYPE AES_Encrypt1(char *p_pszEncrResult, int p_iSize, __int64 p_llKey, const char * p_pszEncrInfo);

// 函数名称：AES_Decrypt1
// 功能描述：AES解密算法
// 参数说明：p_pszDecrResult  [out]    明文
//           p_iSize          [in]     明文缓冲区大小
//           p_llKey          [in]     密钥，如用户代码
//           p_pszDecrInfo    [in]     密文
// 返回说明：(空)
// 函数备注：前后台加解密认证数据时用
void DLLEXPORT STD_CALLTYPE AES_Decrypt1(char *p_pszDecrResult, int p_iSize, __int64 p_llKey, const char * p_pszDecrInfo);

// 函数名称：kbss_comencrypt
// 功能描述：通信加密算法
// 参数说明：p_pszOutput      [out]    密文,大小不小于1024
//           p_pszInput       [in]     明文,大小不小于1024
//           p_pszKey         [in]     密钥,大小不大于224
// 返回说明：(空)
// 函数备注：用于通信过程中关键信息的加密
void DLLEXPORT STD_CALLTYPE kbss_comencrypt(char *p_pszOutput, const char *p_pszInput, const char *p_pszKey);

// 函数名称：kbss_comdecrypt
// 功能描述：通信加密算法
// 参数说明：p_pszOutput      [out]    明文,大小不小于1024
//           p_pszInput       [in]     密文,大小不小于1024
//           p_pszKey         [in]     密钥,大小不大于224
// 返回说明：(空)
// 函数备注：用于通信过程中关键信息的解密
void DLLEXPORT STD_CALLTYPE kbss_comdecrypt(char *p_pszOutput, const char *p_pszInput, const char *p_pszKey);

#ifdef __cplusplus
}
#endif

#endif  // __encrypt_h__
