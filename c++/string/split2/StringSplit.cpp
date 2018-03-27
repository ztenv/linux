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
            do{
                if(index!=string::npos)
                {
                    f(str.substr(pos,index-pos).c_str());
                }else
                {
                    f(str.substr(pos).c_str());
                    break;
                }
                pos=index+tokenLen;
                index=str.find(token,pos);
            }while(true);
            res=0;
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
        result.reserve(20);
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
///////////////////////////////////////////////////////////////////////////////////////////
class printer
{
public:
    void operator ()(const char *value)
    {
        cout<<value<<endl;
    }
};
class printer2
{
public:
    printer2():i(0)
    {
    }
    void operator ()(const char *value)
    {
        cout<<++i<<"#"<<value<<endl;
    }
private:
    int i;
};
void printer3(const char * v)
{
    cout<<"print:"<<v<<endl;
}

int main(int argc,char *argv[])
{
   {
       cout<<"1_________________________________________________"<<endl;
       std::string s(",aa,bb,cc,dd,");
       StringHelper::split(s,printer2());
   }

   {
       cout<<"2_________________________________________________"<<endl;
       std::string s(",aa,bb,cc,dd,,,ee,");
       StringHelper::split(s,printer2());
   }

   {
       cout<<"3_________________________________________________"<<endl;
       std::string s("||||||aa||bb||||dd||||");
       printer2 p;
       StringHelper::split(s,p,"||");
       StringHelper::split(s,printer3,"||");
   }

   {
       cout<<"4_________________________________________________"<<endl;
       std::string s("||,||,||aa||bb||||dd||||");
       StringHelper::split(s,printer2(),"||");
   }

   {
       cout<<"5_________________________________________________"<<endl;
       std::string s("");
       StringHelper::split(s,printer2(),NULL);
   }

   {
       cout<<"6_________________________________________________"<<endl;
       std::string s("||||||aa||bb||||dd||||");
       StringHelper::split(s,printer3,"||");
   }

   {
       cout<<"7_________________________________________________"<<endl;
       std::string s("1||2|3|4||aa||bb||||dd||||");
       std::vector<std::string> result;
       result.reserve(100);
       StringHelper::split(s,result,"||");
       for(size_t i=0;i<result.size();++i)
       {
           cout<<result[i]<<endl;
       }
   }
}


