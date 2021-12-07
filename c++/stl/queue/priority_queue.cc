#include <fmt/core.h>
#include <iostream>
#include <queue>
#include <fmt/format.h>

using namespace std;

template<typename T>
void init_queue(T &pq)
{
    pq.emplace(10);
    pq.emplace(11);
    pq.emplace(-1);
    pq.emplace(2);
    pq.emplace(5);
    pq.emplace(0);

}

template<typename T>
void init_queue_str(T &pqs)
{
    pqs.emplace("aaaa");
    pqs.emplace("cc");
    pqs.emplace("1");
    pqs.emplace("ddddd");
    pqs.emplace("00000000");
    pqs.emplace("fff");
}

template<typename T>
void print(T &pq)
{
    while( !pq.empty()) {
        cout << fmt::format("{} ", pq.top());
        pq.pop();
    }
    cout << endl;
}

int main(int argc, char * argv[])
{
    std::priority_queue<int> pq;
    std::priority_queue<int, std::vector<int>, std::greater<int>> pq2;

    init_queue(pq);
    print(pq);

    init_queue(pq2);
    print(pq2);

    std::priority_queue<std::string> pqs;
    init_queue_str(pqs);
    print(pqs);

    auto cmp = [](const std::string & first, const std::string second){return first.length() < second.length();};
    std::priority_queue<std::string, std::vector<std::string>, decltype(cmp)> pqs2(cmp);
    init_queue_str(pqs2);
    print(pqs2);


    return 0;
}
