#include <string>
#include <iostream>
#include "base64.h"

#include "AES.h"
#include <openssl/aes.h>

using namespace std;
int main()
{
    std::string aes_key("keyskeyskeyskeyk", 16);
    std::string soure = "worldworldworldlkjgklajlfdj";
    cout<<"PlainText:"<<soure<<endl;
    cout<<"Key:"<<aes_key<<endl;

    std::string tmp = CAES::aes_128_ecb_encrypt(soure, aes_key);
    std::string encoder;
    Base64Util::Encode(tmp,&encoder);
    std::cout<<"Encrypt:"<<encoder<<endl;

    std::string decoder;
    Base64Util::Decode(encoder,&decoder);
    std::string plainText= CAES::aes_128_ecb_decrypt(decoder, aes_key);
    cout<<"Decrypt:"<<plainText<<endl;

}

