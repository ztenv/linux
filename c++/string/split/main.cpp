#include <cstring>
#include <iostream>
#include <string>

using namespace std;

int split_by_strtok(char *pbuf,const char *split=",");

int split_by_string(string &str,const char *split=",");

int main(int argc,char *argv[])
{
    {
        char pbuf[]="CH,US,DR,DK";
        split_by_strtok(pbuf);
    }

    {
        char pbuf[]="CH";
        split_by_strtok(pbuf);
    }
    {
        char pbuf[]="1|aaa,2|bbb,3|ccc,4|ddd";
        split_by_strtok(pbuf,",");
    }
    {
        char pbuf[]="1|aaa,2|bbb,3|ccc,4|ddd";
        split_by_strtok(pbuf,"|");
    }

    {
        char pbuf[]="1|你,2|我,3|他，";
        split_by_strtok(pbuf,"|");
    }
    {
        char pbuf[]="1|你,2|我,3|他，";
        split_by_strtok(pbuf,",");
    }
}


int split_by_strtok(char *pbuf,const char *split)
{
    char *p=strtok(pbuf,split);
    while(p!=NULL)
    {
        cout<<p<<"      ";
        p=strtok(NULL,split);
    }
    cout<<endl<<endl;
    return 0;
}
