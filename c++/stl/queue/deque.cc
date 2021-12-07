#include <iostream>
#include <deque>
#include <fmt/format.h>

template<typename T>
void print(T &q)
{
    for(auto & e : q) {
        std::cout << fmt::format("{}, ", e);
    }
    std::cout << std::endl;
}

template<typename T>
void print(T &q, size_t index)
{
    std::cout << fmt::format("at [{}] = {}\n", index, q.at(index));
}

int main()
{
    std::deque<int> deq = {0,1,2,3,4,5,6,7,8,9};

    deq.emplace_front(-1);
    deq.emplace_back(10);
    print(deq);

    deq.shrink_to_fit();

    for(int i = 0; i < deq.size(); ++i) {
        print(deq, i);
    }

    return 0;
}
