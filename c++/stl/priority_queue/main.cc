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

    return 0;
}
