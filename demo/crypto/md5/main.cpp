#include <iostream>
#include <cassert>
#include <string>
#include <vector>
#include "openssl/md5.h"
#include "openssl/sha.h"
#include "openssl/des.h"
#include "openssl/rsa.h"
#include "openssl/pem.h"

using namespace std;

// ---- md5摘要哈希 ---- //
void md5(const std::string &srcStr, std::string &encodedStr, std::string
         &encodedHexStr)
{
    // 调用md5哈希
    unsigned char mdStr[33] = {0};
    MD5((const unsigned char *)srcStr.c_str(), srcStr.length(), mdStr);

    // 哈希后的字符串
    encodedStr = std::string((const char *)mdStr);
    // 哈希后的十六进制串 32字节
    char tmp[3] = {0};
    encodedHexStr.reserve(33);
    for (int i = 0; i < 16; i++)
    {
        sprintf(tmp, "%02x", mdStr[i]);
        encodedHexStr.append(tmp);
    }
}

int main(int argc, char const* argv[])
{
    const char *plainText="888888";
    std::string encodedStr,encodedHexStr;
    md5(plainText,encodedStr,encodedHexStr);
    cout<<"plain text:"<<plainText<<endl;
    cout<<"encrypt text:"<<encodedHexStr<<endl;
    return 0;
}
