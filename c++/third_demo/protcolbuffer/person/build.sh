protoc -I ./protos/ --cpp_out=. ./protos/person.proto
g++ -Wall -g main.cpp person.pb.cc -o main -lprotobuf 
