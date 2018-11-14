g++ -Wall -g main.cpp OracleAdapter.cpp -o main -I$ORACLE_HOME/rdbms/public -std=c++11 -locci -lclntsh -lnnz11 -L$ORACLE_HOME/lib
