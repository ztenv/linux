#include <iostream>
#include "base64.h"

using namespace std;
int main(int argc, char const* argv[])
{
    const size_t bufLen=7;
    char plainText[bufLen]="shlian";

    cout<<"plainText:"<<plainText<<endl;
    cout<<"plainTextLength:"<<sizeof(plainText)<<endl;

    std::string encoder;
    Base64Util::Encode(plainText,&encoder);
    cout<<"cipherText:"<<encoder<<endl;

    std::string decoder;
    Base64Util::Decode(encoder,&decoder);
    cout<<"decryptText:"<<decoder<<endl;

    return 0;
}
