#include "common.h"

#include <fstream>

namespace kingdom{
    using namespace std;

    std::ostream & operator<<(std::ostream &oss,ST_Result &result)
    {
        oss<<"All works have been done.it used "<<result.UsedTime<<" seconds"<<std::endl;
        oss<<"     Total count:"<<result.TotalRecordCount<<std::endl;
        oss<<"Successful count:"<<result.SuccessfulRecordCount<<std::endl;
        oss<<"    Failed count:"<<result.FailingRecordCount<<std::endl;
        result.m_fileName=boost::posix_time::to_iso_string(boost::posix_time::second_clock::local_time())+"run.log";
        oss<<"Please see "<<result.m_fileName<<" file for more detail info."<<std::endl;

        return oss;
    }

    void ST_Result::dump()
    {
        fstream ofs;
        ofs.open(m_fileName.c_str(),std::ios::out);

        ofs<<"All works have been done.it used "<<UsedTime<<" seconds"<<std::endl;
        ofs<<"TotalRecordCount:"<<TotalRecordCount<<std::endl;
        ofs<<"Successful count:"<<SuccessfulRecordCount<<std::endl;
        ofs<<"    Failed count:"<<FailingRecordCount<<std::endl;

        if(this->FailingRecordCount>0)
        {
            ofs<<"Failed Record USER_CODE info:"<<std::endl;
            std::list<std::string>::const_iterator citer=FailingInfo.begin();
            while(citer!=FailingInfo.end())
            {
                ofs<<"    "<<*citer<<std::endl;
                ++citer;
            }
        }

        ofs.close();
    }

}
