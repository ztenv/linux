#include <cstring>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

/**
 * @brief 字符串辅助类
 * @author shlian
 */
class StringHelper
{

public:

    /**
     * @brief 按token分割字符串
     *
     * @tparam func 函数类型
     * @param[in] str 待分割的字符串
     * @param[in] f 回调的(仿)函数,函数签名: void f(const char * value);
     * @param[in] token 分割符
     *
     * @return 0:成功，-1：token非法
     */
    template<typename func>
    static int split(const string &str,func f,const char *token=",")
    {
        int res=-1;
        if(token!=NULL)
        {
            size_t pos=0,index=str.find(token),tokenLen=strlen(token);
            char *pbuf=new (std::nothrow)char[str.size()+1];
            if(pbuf!=0)
            {
                strcpy(pbuf,str.data());
                do{
                    if(index!=string::npos)
                    {
                        //f(str.substr(pos,index-pos).c_str());频繁的copy
                        pbuf[index]=0;
                        f(pbuf+pos);//为了避免频繁的字符串copy
                    }else
                    {
                        //f(str.substr(pos).c_str());
                        f(pbuf+pos);
                        break;
                    }
                    pos=index+tokenLen;
                    index=str.find(token,pos);
                }while(true);
                res=0;
                delete []pbuf;
            }
        }
        return res;
    }


    /**
     * @brief 按token分割字符串
     *
     * @param[in] str 待分隔的字符串
     * @param[in] result 分割后子串的结果集
     * @param[in] token 分割符
     *
     * @return 0:成功，-1：token非法
     */
    static int split(const string &str,std::vector<std::string> &result,const char *token=",")
    {
        result.reserve(100);
        return split(str,split_functor(result),token);
    }
private:

    /**
     * @brief split使用的仿函数，将分割的子串存储到vector中
     */
    class split_functor
    {
    public:
        typedef std::vector<std::string> StringVector;
        split_functor(StringVector &result):m_sv(result)
        {
        }
        void operator()(const char *value)
        {
            m_sv.push_back(std::string(value));
        }
    private:
        StringVector &m_sv;
    };
};
