#include <fstream>
#include <iostream>

using namespace std;


struct record{
    char f1[10];
    char f2[3];
    int f4;
    int f5;
};

int main(int argc,char *argv[])
{
    record r;
    r.f4=100;
    r.f5=200;

    fstream f("test.tmp",ios::in|ios::out|ios::binary|ios::trunc);
    f.write((char*)&r,sizeof(record));
    r.f1[0]='a';
    r.f4=300;
    r.f5=400;
    f.write((char*)&r,sizeof(record));
    f.close();

    fstream fr("test.tmp",ios::in);
    fr.seekg(0,ios::beg);
    fr.read((char*)&r,sizeof(record));
    cout<<r.f1<<","<<r.f2<<","<<r.f4<<","<<r.f5<<endl;
    fr.read((char*)&r,sizeof(record));
    cout<<r.f1<<","<<r.f2<<","<<r.f4<<","<<r.f5<<endl;
    cout<<fr.eof()<<endl;
    fr.read((char*)&r,sizeof(record));
    cout<<r.f1<<","<<r.f2<<","<<r.f4<<","<<r.f5<<endl;
    cout<<fr.eof()<<endl;
    fr.close();
    return 0;
}
