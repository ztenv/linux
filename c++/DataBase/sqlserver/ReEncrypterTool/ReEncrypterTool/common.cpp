#include "common.h"
#include <fstream>

namespace kingdom{
    using namespace std;

    std::ostream & operator<<(std::ostream &oss,ST_Result &result)
    {
        oss<<"All works have been done.it used "<<result.UsedTime<<" seconds"<<std::endl;
        oss<<"TotalRecordCount:"<<result.TotalRecordCount<<std::endl;
        oss<<"Successful count:"<<result.SuccessfulRecordCount<<std::endl;
        oss<<"    Failed count:"<<result.FailingRecordCount<<std::endl;
        result.m_fileName=boost::posix_time::to_iso_string(boost::posix_time::second_clock::local_time())+"run.log";
        oss<<"Detail info see "<<result.m_fileName<<" file"<<std::endl;
        return oss;
    }

    void ST_Result::dump()
    {
        fstream of;
        of.open(m_fileName,ios::out);
        of<<"All works have been done.it used "<<UsedTime<<" seconds"<<std::endl;
        of<<"TotalRecordCount:"<<TotalRecordCount<<std::endl;
        of<<"Successful count:"<<SuccessfulRecordCount<<std::endl;
        of<<"    Failed count:"<<FailingRecordCount<<std::endl;
        if(this->FailingRecordCount>0)
        {
            of<<"Failed Record USER_CODE info:"<<std::endl;
            std::list<std::string>::const_iterator citer=FailingInfo.begin();
            while(citer!=FailingInfo.end())
            {
                of<<"    "<<*citer<<std::endl;
                ++citer;
            }
        }
        of.close();
    }
}