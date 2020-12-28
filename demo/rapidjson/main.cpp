#include <iostream>

#include <rapidjson/rapidjson.h>
#include <rapidjson/document.h>

const char * json=" { \"id\": 11, \"method\": \"private/get-order-detail\", \"code\": 0, \"result\": { \"trade_list\": [ { \"side\": \"BUY\", \"instrument_name\": \"ETH_CRO\", \"fee\": 0.007, \"trade_id\": \"371303044218155296\", \"create_time\": 1588902493045, \"traded_price\": 7, \"traded_quantity\": 7, \"fee_currency\": \"CRO\", \"order_id\": \"371302913889488619\" } ], \"order_info\": { \"status\": \"FILLED\", \"side\": \"BUY\", \"order_id\": \"371302913889488619\", \"client_oid\": \"9_yMYJDNEeqHxLqtD_2j3g\", \"create_time\": 1588902489144, \"update_time\": 1588902493024, \"type\": \"LIMIT\", \"instrument_name\": \"ETH_CRO\", \"cumulative_quantity\": 7, \"cumulative_value\": 7, \"avg_price\": 7,      \"fee_currency\": \"CRO\", \"time_in_force\": \"GOOD_TILL_CANCEL\", \"exec_inst\": \"POST_ONLY\"} } }";


using namespace rapidjson;
using namespace std;

int main(int argc, char *argv[])
{
    Document doc;

    doc.Parse(json);
    
    auto result=doc.FindMember("result");

    auto trdlist=result->value.FindMember("trade_list");

    size_t element_size=trdlist->value.Size();

    cout<<element_size<<endl;

    for(auto &ele:trdlist->value.GetArray())
    {
        auto oid=ele.FindMember("order_id")->value.GetString();
        auto tid=ele.FindMember("trade_id")->value.GetString();

        auto sid=ele.FindMember("sid");
        if(sid==ele.MemberEnd())
        {
            cout<<"warn:there is no sid member"<<endl;
        }
        cout<<oid<<endl;
        cout<<tid<<endl;
    }


    return 0;
}
