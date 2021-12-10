#include <fmt/core.h>
#include <iostream>
#include <set>
#include <fmt/format.h>

template<typename T>
void print(T &s)
{
    for(auto & item : s) {
        std::cout << fmt::format("{},", item);
    }
    std::cout << std::endl;
}

int main()
{

    std::set<int> set1 = {9,10,2,3,8,-1};
    set1.emplace(-10);
    print(set1);

    std::set<int> set2 = {9,7,5,4,3,2,5,1,10};
    set2.emplace(0);
    print(set2);

    std::cout << "merge:" << std::endl;
    set1.merge(set2);
    print(set1);
    print(set2);

    {
        std::cout << "lower_bound(2) :" << std::endl;
        auto iter = set1.lower_bound(2);
        auto biter = set1.begin();
        while(biter != iter) {
            std::cout << fmt::format(" {},", *biter);
            ++biter;
        }

        std::cout << std::endl;
        while(iter != set1.end()) {
            std::cout << fmt::format(" {},", *iter);
            ++iter;
        }
        std::cout << std::endl;
    }

    {
        std::cout << "upper_bond(2) :" << std::endl;
        auto iter = set1.upper_bound(2);
        auto biter = set1.begin();
        while(biter != iter) {
            std::cout << fmt::format(" {},", *biter);
            ++biter;
        }
        std::cout << std::endl;

        while(iter != set1.end()) {
            std::cout << fmt::format(" {},", *iter);
            ++iter;
        }
        std::cout << std::endl;
    }

    {
        std::cout << "equal_range(2) :" << std::endl;
        auto er = set1.equal_range(2);
        auto biter = set1.begin();
        while(biter != er.first) {
            std::cout << fmt::format(" {},", *biter);
            ++biter;
        }

        biter = er.first;
        std::cout << "[";
        while(biter != er.second) {
            std:: cout << fmt::format(" {},", *biter);
            ++biter;
        }
        std::cout << ")";

        biter = er.second;
        while(biter != set1.end()) {
            std::cout << fmt::format(" {},", *biter);
            ++biter;
        }
        std::cout << std::endl;
    }


    return 0;
}
