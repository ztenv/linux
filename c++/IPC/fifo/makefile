OBJS=fifo.o
APPNAME=fifo

BINPATH=-L./
INCPATH=-I./
LIBPTH=-L./

INCLUDES=$(INCPATH)

LIBS=$(BINPATH) \
	 $(LIBPATH) \
	 -pthread

CC=g++

CCFLAGS=-Wall -g

$(APPNAME):$(OBJS)
	   $(CC)  -o $@ $^ $(LIBS)

.SUFFIXES:.c .cpp .o
.cpp.o:
	   $(CC) $(INCLUDES) $(CCFLAGS) -c $*.cpp -o $*.o

.PHONY:clean
clean:
	   rm -rf *.o $(APPNAME)

