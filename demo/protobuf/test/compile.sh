protoc --cpp_out=./ test.proto
g++ -Wall -g main.cpp test.pb.cc -o main --std=c++17 -lprotobuf -lpthread
