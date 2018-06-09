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
{//��������
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

// �������ƣ�AES_Encrypt1
// ����������AES�����㷨
// ����˵����p_pszEncrResult  [out]    ����
//           p_iSize          [in]     ���Ļ�������С
//           p_llKey          [in]     ��Կ�����û�����
//           p_pszEncrInfo    [in]     ����
// ����˵����(��)
// ������ע��ǰ��̨�ӽ�����֤����ʱ��
void DLLEXPORT STD_CALLTYPE AES_Encrypt1(char *p_pszEncrResult, int p_iSize, __int64 p_llKey, const char * p_pszEncrInfo);

// �������ƣ�AES_Decrypt1
// ����������AES�����㷨
// ����˵����p_pszDecrResult  [out]    ����
//           p_iSize          [in]     ���Ļ�������С
//           p_llKey          [in]     ��Կ�����û�����
//           p_pszDecrInfo    [in]     ����
// ����˵����(��)
// ������ע��ǰ��̨�ӽ�����֤����ʱ��
void DLLEXPORT STD_CALLTYPE AES_Decrypt1(char *p_pszDecrResult, int p_iSize, __int64 p_llKey, const char * p_pszDecrInfo);

// �������ƣ�kbss_comencrypt
// ����������ͨ�ż����㷨
// ����˵����p_pszOutput      [out]    ����,��С��С��1024
//           p_pszInput       [in]     ����,��С��С��1024
//           p_pszKey         [in]     ��Կ,��С������224
// ����˵����(��)
// ������ע������ͨ�Ź����йؼ���Ϣ�ļ���
void DLLEXPORT STD_CALLTYPE kbss_comencrypt(char *p_pszOutput, const char *p_pszInput, const char *p_pszKey);

// �������ƣ�kbss_comdecrypt
// ����������ͨ�ż����㷨
// ����˵����p_pszOutput      [out]    ����,��С��С��1024
//           p_pszInput       [in]     ����,��С��С��1024
//           p_pszKey         [in]     ��Կ,��С������224
// ����˵����(��)
// ������ע������ͨ�Ź����йؼ���Ϣ�Ľ���
void DLLEXPORT STD_CALLTYPE kbss_comdecrypt(char *p_pszOutput, const char *p_pszInput, const char *p_pszKey);

#ifdef __cplusplus
}
#endif

#endif  // __encrypt_h__
