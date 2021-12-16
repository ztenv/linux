#include <iostream>
#include <unordered_set>
#include <string>
#include <fmt/format.h>

template<typename T>
void print(T &s)
{
    std::cout << fmt::format(" bucket_count={}, max_bucket_count={}\n",  s.bucket_count(), s.max_bucket_count());
    for(int i = 0; i < s.bucket_count(); ++i) {
        std::cout << fmt::format("bucket_size[{}]={}\n", i, s.bucket_size(i));
    }
    for(auto & item : s) {
        std::cout << fmt::format("{},", item);
    }
    std::cout << std::endl;
}

int main()
{
    std::unordered_set<std::string> unorder_set = {"1", "2", "a", "A", "0", "$", "B", "b", "1", "B"};
    print(unorder_set);

    return 0;
}
