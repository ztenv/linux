#include <cstring>
#include <iostream>
#include <string>

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
    static int SplitString(const string &str,func f,const char *token=",")
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
};

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

struct ST_Data{
    class printer2
    {
    public:
        printer2():i(0)
        {
        }
        void operator ()(const char *value)
        {
            cout<<++i<<":"<<value<<endl;
        }
    private:
        int i;
    };

    class printer3
    {
    public:
        printer3():i(0)
        {
        }
        void operator ()(const char *value)
        {
            cout<<++i<<"|"<<value<<endl;
        }
    private:
        int i;
    };

    printer2 p2;
    printer3 p3;
};

void print(const char * v)
{
    cout<<"print:"<<v<<endl;
}

int main(int argc,char *argv[])
{
   {
       cout<<"1_________________________________________________"<<endl;
       std::string s(",aa,bb,cc,dd,");
       StringHelper::SplitString(s,printer2());
   }

   {
       cout<<"2_________________________________________________"<<endl;
       std::string s(",aa,bb,cc,dd,,,ee,");
       StringHelper::SplitString(s,printer2());
   }

   {
       cout<<"3_________________________________________________"<<endl;
       std::string s("||||||aa||bb||||dd||||");
       printer2 p;
       StringHelper::SplitString(s,p,"||");
       StringHelper::SplitString(s,print,"||");
   }

   {
       cout<<"4_________________________________________________"<<endl;
       std::string s("||,||,||aa||bb||||dd||||");
       StringHelper::SplitString(s,printer2(),"||");
   }

   {
       cout<<"5_________________________________________________"<<endl;
       std::string s("");
       StringHelper::SplitString(s,printer2(),NULL);
   }

   {
       cout<<"6_________________________________________________"<<endl;
       std::string s("||||||aa||bb||||dd||||");
       ST_Data data;
       StringHelper::SplitString(s,data.p2,"||");
       StringHelper::SplitString(s,data.p3,"||");
   }
}


