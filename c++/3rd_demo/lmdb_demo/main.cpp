#include <iostream>
#include <string>
#include <chrono>

#include "lmdb.h"


using namespace std;

int main(int argc, char* argv[]){

    int res;
    MDB_env *env;
    MDB_dbi dbi;
    MDB_val key, data;
    MDB_txn *txn;

    //init lmdb
    cout<<"lmdb version:"<<mdb_version(0, 0, 0)<<endl;
    res = mdb_env_create(&env);
    if(res){
        cout<<"mdb_env_create error,error:"<<mdb_strerror(res)<<endl;
        return -1;
    }

    res=mdb_env_set_mapsize(env,1024*1024*1024);
    if(res!=0){
        cout<<"mdb_env_set_mapsize error,detail:"<< mdb_strerror(res)<<endl;
        return -1;
    }

    res = mdb_env_open(env, "./lmdb_test", 0, 0644);
    if(res){
        cout<<"mdb_env_open error,detail:"<< mdb_strerror(res)<<endl;
        return -1;
    }

    res = mdb_txn_begin(env, NULL, 0, &txn);
    if(res){
        cout<<"mdb_txn_begin error,detail:"<< mdb_strerror(res)<<endl;
        return -1;
    }

    res = mdb_dbi_open(txn, NULL, 0, &dbi);
    if(res){
        cout<<"mdb_dbi_open error,detail:"<< mdb_strerror(res)<<endl;
        return -1;
    }


    do{
        //write data to lmdb
        unsigned long long count=1000000;
        unsigned long long value=0;

        auto start=std::chrono::system_clock::now();
        unsigned long long i=0;
        for(;i<count;++i){
            value=i+1;

            key.mv_size =sizeof(i);
            key.mv_data =(void*)&i;
            data.mv_size = sizeof(value);
            data.mv_data = (void*)&value;

            res = mdb_put(txn, dbi, &key, &data, 0);
            if(res!=0)
            {
                cout<<"mdb_put error,res="<<res<<",detail:"<<mdb_strerror(res)<<endl;
                break;
            }
        }
        auto stop=std::chrono::system_clock::now();
        std::chrono::nanoseconds time_used=stop-start;
        cout<<"write "<<i<<" items use:"<<time_used.count()<<" ns"<<endl;

        start=std::chrono::system_clock::now();
        res = mdb_txn_commit(txn);
        stop=std::chrono::system_clock::now();
        if (res) {
            cerr<<"mdb_txn_commit error:"<< res<<":"<< mdb_strerror(res)<<endl;
            break;
        }
        time_used=stop-start;
        cout<<"commit use:"<<time_used.count()<<" ns"<<endl;

        res = mdb_txn_begin(env, NULL, MDB_RDONLY, &txn);
        MDB_cursor *cursor;
        res = mdb_cursor_open(txn, dbi, &cursor);

        //read data from lmdb
        start=std::chrono::system_clock::now();
        unsigned long long read_count=0;
        while ((res = mdb_cursor_get(cursor, &key, &data, MDB_NEXT)) == 0) {
            int r_key=*(int *)key.mv_data;
            int r_value=*(int *)data.mv_data;
            ++read_count;
            //cout<<"<"<<r_key<<","<<r_value<<">"<<endl;
        }
        stop=std::chrono::system_clock::now();
        time_used=stop-start;
        cout<<"read "<<read_count<<" items, use:"<<time_used.count()<<" ns"<<endl;

        mdb_cursor_close(cursor);
        mdb_txn_abort(txn);
    }while(0);

    //free
    mdb_dbi_close(env, dbi);
    mdb_env_close(env);
    return 0;
}

