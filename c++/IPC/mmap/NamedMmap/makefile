OBJS=namedmmap.o
APPNAME=namedmmap

BINPATH=-L./
INCPATH=-I./
LIBPATH=-L./ 

INCLUDES=$(INCPATH)

LIBS=$(BINPATH) \
	 $(LIBPATH) \
	 -pthread    \

CC=g++

CCFLAGS=-Wall -g

$(APPNAME):$(OBJS)
	   $(CC)  -o $@ $^ $(LIBS)

.SUFFIXES:.c .cpp .o
.cpp.o:
	   $(CC) $(CCFLAGS) $(INCLUDES) -c $*.cpp -o $*.o

.PHONY:clean
clean:
	   rm -rf *.o $(APPNAME)

