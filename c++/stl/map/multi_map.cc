#include <fmt/core.h>
#include <iostream>
#include <map>
#include <string>
#include <fmt/format.h>
#include <chrono>
#include <thread>

template<typename T>
void insert_items(T &mm)
{
    std::cout << "insert items..." << std::endl;
    for(int i = 0; i < 10; ++i) {
        auto tm = std::chrono::system_clock::now().time_since_epoch().count();
        mm.insert({i, tm});
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }
    std::cout << "inserted items" << std::endl;
}

template<typename T>
void print(T &mm)
{
    for(auto & item : mm) {
        std::cout << fmt::format("<{},{}>\n", item.first, item.second);
    }
    std::cout << std::endl;
}

int main()
{
    std::multimap<int, int64_t> mmp;
    insert_items(mmp);
    insert_items(mmp);

    print(mmp);

    {
        std::cout << "equal_range(9):" << std::endl;
        auto er = mmp.equal_range(9);
        for(auto &iter = er.first; iter != er.second; ++iter) {
            std::cout << fmt::format("<{},{}>\n", iter->first, iter->second);
        }
    }

    {
        std::cout << "lower_bound(5):" << std::endl;
        auto lb = mmp.lower_bound(5);
        for(auto iter = mmp.begin(); iter != lb; ++iter) {
            std::cout << fmt::format("<{},{}>\n", iter->first, iter->second);
        }
        std::cout << fmt::format("<{},{}>\n", lb->first, lb->second);

        std::cout << "upper_bound(5):" << std::endl;
        auto ub = mmp.upper_bound(5);
        for(auto iter = ub; iter != mmp.end(); ++iter) {
            std::cout << fmt::format("<{},{}>\n", iter->first, iter->second);
        }
    }

    {
        std::cout << "erase_if(key % 2 ==0):" << std::endl;
        std::erase_if(mmp, [](auto &item) {return item.first %2 == 0;});
        print(mmp);
    }

    return 0;
}
