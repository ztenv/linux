#include <iostream>
#include <sstream>
#include <string>

using namespace std;

#define DEFAULT_PAGE_COUNT 100

/**
 * @brief 分页查询的参数类，用于构建分页查询所调用的存储过程及参数
 * @author shlian
 */
class CPagingQueryParam
{
public:

    /**
     * @brief 构建函数
     *
     * @param[in] clLbmPara      CLbmPara类的实例，用于获取分页信息
     * @param[in] Procedurename  存储过程的名称
     */
    CPagingQueryParam(/*CLbmPara &clLbmPara,*/const char *ProcedureName):m_pageIndex(1),m_pageSize(DEFAULT_PAGE_COUNT)
    {
        m_oss<<"exec "<<ProcedureName;
        //clLbmPara.GetValue("PAGE_INDEX","页号",m_pageIndex,false);
        //clLbmPara.GetValue("PAGE_SIZE","一页记录数",m_pageSize,false);

        m_pageIndex=m_pageIndex<=0?1:m_pageIndex;
        m_pageSize=m_pageSize<=0?DEFAULT_PAGE_COUNT:m_pageSize;
        m_pageInfoStream<<m_pageIndex<<","<<m_pageSize;
    }

    /**
     * @brief 析构函数
     */
    ~CPagingQueryParam()
    {
    }


    /**
     * @brief 添加调用存储过程的参数
     *
     * @tparam T       参数的类型(除const char *、char*之外)，可由编译器推导
     * @param[in] para 具体的参数值
     *
     * @return CPagingQueryParam类对像的引用
     */
    template<typename T>
    CPagingQueryParam &AddParam(T para)
    {
        m_oss<<" "<<para<<",";
        return *this;
    }

    /**
     * @brief 添加const char*类型的参数
     *
     * @param[in] para const char*类型的参数值
     *
     * @return CPagingQueryParam类对像的引用
     */
    CPagingQueryParam &AddParam(const char *para)
    {
        m_oss<<" \'"<<std::string(para==NULL?"":para)<<"\',";
        return *this;
    }

    /**
     * @brief 添加char *类型的参数
     *
     * @param[in] para char*类型的参数值
     *
     * @return CPagingQueryParam类对像的引用
     */
    CPagingQueryParam &AddParam(char *para)
    {
        m_oss<<" \'"<<std::string(para==NULL?"":para)<<"\',";
        return *this;
    }

    /**
     * @brief 将存储过程及参数序列化为字符串
     *
     * @return 存储过程及参数的字符串
     */
    std::string toString()
    {
        return m_oss.str().append(m_pageInfoStream.str());
    }
private:
    long m_pageIndex;
    long m_pageSize;
    std::ostringstream m_pageInfoStream;
    std::ostringstream m_oss;
};

int main(int argc,char *argv[])
{
    CPagingQueryParam pqp("p_Query_User_Info_Mdf");
    const char *str1="2str";
    char *buf=new char[1024];
    buf[0]='t';buf[1]='e',buf[2]=0;
    char *pnull=0;
    pqp.AddParam(1).AddParam(str1).AddParam(3).AddParam(buf).AddParam("end").AddParam(pnull).AddParam(0.1);
    pqp.AddParam(1ll).AddParam(2.0).AddParam("end all");
    cout<<pqp.toString()<<endl;
    cout<<pqp.toString()<<endl;
    cout<<pqp.toString()<<endl;
    return 0;
}
