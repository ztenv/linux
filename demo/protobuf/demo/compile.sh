protoc --cpp_out=./ proto.proto
g++ -Wall -g main.cpp proto.pb.cc -o main --std=c++17 -lprotobuf -lpthread
