#include "AES.h"
#include <iostream>
#include <openssl/evp.h>
#include <openssl/ssl.h>
#include "Base64.h"
#include <cassert>

struct evp_cipher_ctx_st {
    const EVP_CIPHER *cipher;
    ENGINE *engine;             /* functional reference if 'cipher' is
                                 * ENGINE-provided */
    int encrypt;                /* encrypt or decrypt */
    int buf_len;                /* number we have left */
    unsigned char oiv[EVP_MAX_IV_LENGTH]; /* original iv */
    unsigned char iv[EVP_MAX_IV_LENGTH]; /* working iv */
    unsigned char buf[EVP_MAX_BLOCK_LENGTH]; /* saved partial block */
    int num;                    /* used by cfb/ofb/ctr mode */
    void *app_data;             /* application stuff */
    int key_len;                /* May change for variable length cipher */
    unsigned long flags;        /* Various flags */
    void *cipher_data;          /* per EVP data */
    int final_used;
    int block_mask;
    unsigned char final[EVP_MAX_BLOCK_LENGTH]; /* possible final block */
}; /* EVP_CIPHER_CTX */

/*
 *  * openssl aes 128 ecb pkcs5padding 加密
 *   */
std::string CAES::aes_128_ecb_encrypt(const std::string& source, const std::string& key)
{
    EVP_CIPHER_CTX *ctx;
    ctx = EVP_CIPHER_CTX_new();
    int ret = EVP_EncryptInit_ex(ctx, EVP_aes_128_ecb(), NULL, (const unsigned char*)key.data(), NULL);
    assert(ret == 1);
    unsigned char* result = new unsigned char[source.length() + 64]; // 弄个足够大的空间
    int len1 = 0;
    ret = EVP_EncryptUpdate(ctx, result, &len1, (const unsigned char*)source.data(), source.length());
    assert(ret == 1);
    int len2 = 0;
    ret = EVP_EncryptFinal_ex(ctx, result + len1, &len2);
    assert(ret == 1);
    ret = EVP_CIPHER_CTX_cleanup(ctx);
    assert(ret == 1);
    EVP_CIPHER_CTX_free(ctx);
    std::string res((char*)result, len1 + len2);
    //std::cout << result << std::endl;
    delete[] result;
    return res;
}
/*
 *  * openssl aes 128 ecb pkcs5padding 解密
 *   */
std::string CAES::aes_128_ecb_decrypt(const std::string& ciphertext, const std::string& key)
{
    EVP_CIPHER_CTX *ctx;
    ctx = EVP_CIPHER_CTX_new();
    int ret = EVP_DecryptInit_ex(ctx, EVP_aes_128_ecb(), NULL, (const unsigned char*)key.data(), NULL);
    assert(ret == 1);
    unsigned char* result = new unsigned char[ciphertext.length() + 64]; // 弄个足够大的空间
    int len1 = 0;
    ret = EVP_DecryptUpdate(ctx, result, &len1, (const unsigned char*)ciphertext.data(), ciphertext.length());
    assert(ret == 1);
    int len2 = 0;
    ret = EVP_DecryptFinal_ex(ctx, result + len1, &len2);
    assert(ret == 1);
    ret = EVP_CIPHER_CTX_cleanup(ctx);
    assert(ret == 1);
    EVP_CIPHER_CTX_free(ctx);
    std::string res((char*)result, len1 + len2);
    delete[] result;
    return res;
}

