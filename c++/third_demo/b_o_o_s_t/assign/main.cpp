#include <iostream>
#include <string>
#include <vector>
#include <list>
#include <map>

#include <boost/assign/std.hpp>
#include <boost/assign/std/vector.hpp>
#include <boost/assign/list_of.hpp>

using namespace std;
using namespace boost::assign;

int main(int argc,char *argv[])
{
    {
        vector<int> vec;
        vec+=1,2,3,4,5,6,7,8,9,10000;
        vector<int>::iterator iter=vec.begin();
        while(iter!=vec.end())
        {
            cout<<*iter++<<" ";
        }
        cout<<endl;
    }

    {
        list<std::string> li;
        li+="A","B","C","D","E","Z","a";
        list<std::string>::iterator iter=li.begin();
        while(iter!=li.end())
        {
            cout<<*iter++<<" ";
        }
        cout<<endl;
    }

    {
        deque<string> deq;
        deq+="1","123","456","xyz","ZZZ","$%@";
        deque<string>::iterator iter=deq.begin();
        while(iter!=deq.end())
        {
            cout<<*iter++<<" ";
        }
        cout<<endl;
    }

    {
        map<int,string> ismap;
        boost::assign::insert(ismap)
            (1,"A")(2,"@")(3,"#")(4,"%")(100,"*");
        map<int,string>::iterator iter=ismap.begin();
        while(iter!=ismap.end())
        {
            cout<<"<"<<iter->first<<","<<iter->second<<"> ";
            ++iter;
        }
        cout<<endl;
    }

    {
#include <utility>
#include <boost/assign/list_inserter.hpp>
        deque<std::pair<int,string> > deq;
        boost::assign::push_front(deq)(1,"A")(2,"B")(3,"C")(4,"D")(5,"E")(6,"F");
        deque<std::pair<int,string>>::iterator iter=deq.begin();
        while(iter!=deq.end())
        {
            cout<<"<"<<iter->first<<","<<iter->second<<"> ";
            ++iter;
        }
        cout<<endl;
    }

    {
        list<int> li=boost::assign::list_of(1)(2)(3)(4)(5);
        vector<int> vec=boost::assign::list_of(1)(2)(3)(4)(5);

        list<int>::iterator iter=li.begin();
        while(iter!=li.end())
        {
            cout<<*iter++<<" ";
        }
        cout<<endl;

        vector<int>::iterator iter1=vec.begin();
        while(iter1!=vec.end())
        {
            cout<<*iter1++<<" ";
        }
        cout<<endl;
    }

    {
#include <cstdlib>
        list<int> li;
        li+=1,2,3,4,boost::assign::repeat(10,0),97,boost::assign::repeat_fun(4,&rand);
        list<int>::iterator iter=li.begin();
        while(iter!=li.end())
        {
            cout<<*iter++<<" ";
        }
        cout<<endl;
    }

    return 0;
}
