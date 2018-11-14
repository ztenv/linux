#ifndef BASE64_H
#define BASE64_H
#include <string>
//#include "baseutils_global.h"

class Base64Util {
public:
    static bool Encode(const std::string &in, std::string *out);
    static bool Encode(const char *input, size_t input_length, char *out, size_t out_length);
    static bool Decode(const std::string &in, std::string *out);
    static bool Decode(const char *input, size_t input_length, char *out, size_t out_length);
    static int DecodedLength(const char *in, size_t in_length);
    static int DecodedLength(const std::string &in);

    inline static int EncodedLength(size_t length)
    {
        return (length + 2 - ((length + 2) % 3)) / 3 * 4;
    }
    inline static int EncodedLength(const std::string &in)
    {
        return EncodedLength(in.length());
    }
    inline static void StripPadding(std::string *in)
    {
        while (!in->empty() && *(in->rbegin()) == '=')
            in->resize(in->size() - 1);
    }
private:
    static inline void a3_to_a4(unsigned char * a4, unsigned char * a3)
    {
        a4[0] = (a3[0] & 0xfc) >> 2;
        a4[1] = ((a3[0] & 0x03) << 4) + ((a3[1] & 0xf0) >> 4);
        a4[2] = ((a3[1] & 0x0f) << 2) + ((a3[2] & 0xc0) >> 6);
        a4[3] = (a3[2] & 0x3f);
    }

    static inline void a4_to_a3(unsigned char * a3, unsigned char * a4)
    {
        a3[0] = (a4[0] << 2) + ((a4[1] & 0x30) >> 4);
        a3[1] = ((a4[1] & 0xf) << 4) + ((a4[2] & 0x3c) >> 2);
        a3[2] = ((a4[2] & 0x3) << 6) + a4[3];
    }

    static inline unsigned char b64_lookup(unsigned char c)
    {
        if (c >= 'A' && c <= 'Z')
            return c - 'A';
        if (c >= 'a' && c <= 'z')
            return c - 71;
        if (c >= '0' && c <= '9')
            return c + 4;
        if (c == '+')
            return 62;
        if (c == '/')
            return 63;
        return 255;
    }
};

#endif // BASE64_H
