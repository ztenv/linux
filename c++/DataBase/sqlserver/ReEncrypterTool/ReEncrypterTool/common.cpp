#include "common.h"

namespace kingdom{

    std::ostream & operator<<(std::ostream &oss,ST_Result &result)
    {
        oss<<"All works have been done.it used "<<result.UsedTime<<" seconds"<<std::endl;
        oss<<"TotalRecordCount:"<<result.TotalRecordCount<<std::endl;
        oss<<"Successful count:"<<result.SuccessfulRecordCount<<std::endl;
        oss<<"    Failed count:"<<result.FailingRecordCount<<std::endl;
        if(result.FailingRecordCount>0)
        {
            oss<<"Failed Record USER_CODE info:"<<std::endl;
            std::list<std::string>::const_iterator citer=result.FailingInfo.begin();
            while(citer!=result.FailingInfo.end())
            {
                oss<<"    "<<*citer<<std::endl;
                ++citer;
            }
        }
        return oss;
    }
}
