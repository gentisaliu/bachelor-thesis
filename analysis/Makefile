# Dirs
SRCDIR			:= src
LIBDIR      	:= lib
BINDIR      	:= bin

# Includes
INCLUDES		:= -Iinclude -I${SRCDIR}

# Compiler flags
CXX         	:= g++
ROOTCFLAGS 		:= $(shell root-config --cflags)
ROOTLIBS    	:= $(shell root-config --libs) -Wl,-rpath,$(shell root-config --libdir)
GCC_PATH 		:= $(shell which $(CXX))
GCC_LIB_PATH 	:= $(dir $(GCC_PATH))../lib64
ROOTLIBS		+= -Wl,-rpath,$(GCC_LIB_PATH)
CXXFLAGS		:= -std=c++11 -O2 -Wall -fPIC -g -fopenmp $(INCLUDES) $(ROOTCFLAGS)
LIBS			:= $(ROOTLIBS)

# List of program code files that can be compiled. each of these is an abbreviation for *.cc
EXEC			:= plot_variable

$(EXEC):
	$(CXX) $(CXXFLAGS) $(LIBS) src/$@.cc -o $(BINDIR)/$@

all: $(EXEC)
