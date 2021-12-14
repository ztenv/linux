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
    std::multiset<int> set1 = {9,10,2,3,8,-1};
    set1.emplace(-10);
    set1.emplace(-1);
    set1.emplace(2);
    print(set1);

    std::cout << "lower_bound(2):" << std::endl;
    auto lb = set1.lower_bound(2);
    for(auto iter = set1.begin(); iter != lb; ++iter) {
        std::cout << fmt::format("{},", *iter);
    }
    std::cout << *lb << std::endl;

    std::cout << "upper_bond(3):" << std::endl;
    auto ub = set1.upper_bound(3);
    for(auto iter = ub; iter != set1.end(); ++iter) {
        std::cout << fmt::format("{},", *iter);
    }
    std::cout << std::endl;

    std::cout << "equal_range(2):" << std::endl;
    auto er = set1.equal_range(2);
    for(auto &iter = er.first; iter != er.second; ++iter) {
        std::cout << fmt::format("{},", *iter);
    }
    std::cout << std::endl;


    return 0;
}
