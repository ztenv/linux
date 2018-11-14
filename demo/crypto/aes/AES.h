#pragma once
#include <openssl/aes.h>
#include <string>
class CAES
{
public:

    static std::string aes_128_ecb_encrypt(const std::string& source, const std::string& key);
    static std::string aes_128_ecb_decrypt(const std::string& ciphertext, const std::string& key);
};

