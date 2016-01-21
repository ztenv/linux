OBJS=normalqueue.o
APPNAME=msgqueue

BINPATH=-L./
INCPATH=-I./
LIBPATH=-L./ 

INCLUDES=$(INCPATH)

LIBS=$(BINPATH) \
	 $(LIBPATH) \
	 -pthread    \
	 -lrt

CC=g++

CCFLAGS=-Wall -g

$(APPNAME):$(OBJS)
	   $(CC) -o $@ $^ $(LIBS)

.SUFFIXES:.c .cpp .o
.cpp.o:
	   $(CC) $(CCFLAGS) $(INCLUDES) -c $*.cpp -o $*.o

.PHONY:clean
clean:
	   rm -rf *.o $(APPNAME)

