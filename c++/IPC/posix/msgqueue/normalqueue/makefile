OBJS=normalqueue.cpp
APPNAME=msgqueue

BINPATH=./bin/
INCPATH=./include/
LIBPTH=./lib/

INCLUDES=-I$(INCPATH)

LIBS=-L$(BINPATH) \
	 -L$(LIBPATH) \
	 -lpthread    \
	 -lrt

CC=g++

CCFLAGS=-Wall -g

$(APPNAME):$(OBJS)
	   $(CC) $(LIBS) -o $@ $^

.SUFFIXES:.c .cpp .o
	.cpp.o:
	   $(CC) $(INCLUDES) $(CCFLAGS) -c $*.cpp -o $*.o

.PHONY:clean
	clean:
	   rm -rf *.o $(APPNAME)

