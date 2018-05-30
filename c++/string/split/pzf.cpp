#include <iostream>
#include <vector>
#include <string>
#include "StringSplit.h"

using namespace std;

static vector<string>& Split(const string& sSrc, vector<string>& sVecOut, const string& csSpliter)
    {
        sVecOut.clear();
        if (sSrc.empty())       // 源字符串是空的
        {
            return sVecOut;
        }

        size_t iPos = sSrc.find(csSpliter);
        if (iPos == string::npos)   // 没有分隔符
        {
            sVecOut.push_back(sSrc);
            return sVecOut;
        }

        // 保存第一个分隔符之前的字符串
        sVecOut.push_back(sSrc.substr(0, iPos));
        // 查找其他分隔符
        do
        {
            // 找下一个分隔符
            size_t iPosTmp = iPos +
            csSpliter.size();
            iPos = sSrc.find(csSpliter, iPosTmp);

            if (iPos == string::npos)   // 没有更多分隔符了
            {
                // 保存上一个分隔符到结束的字符趾
                sVecOut.push_back(sSrc.substr(iPosTmp));
                break;      // 已经找到所有的分隔符了
            }
            else
            {
                // 保存上一个分隔符和这个分隔之间的字符串, 然后进入下一次循环
                sVecOut.push_back(sSrc.substr(iPosTmp, iPos - iPosTmp));
            }
        } while (true);

        return sVecOut;
}

int main()
{
    std::string src="aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a\
    aa,bb,cc,ddd,ee,fff,ggg,hhh,iii,jjj,hhh,jjjj,aaa,dddd,jjjj,ffff,d,d,d,d,d,d,,d,d,d,aa,a,a,,a,a,a"
    ;

    unsigned long long num=0;
    vector<string> result;
    do
    {
        Split(src,result,",");
    }while(++num<100000);
    return 0;
}
