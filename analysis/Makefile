# Dirs
SRC_DIR			:= src
OBJ_DIR			:= obj
BIN_DIR      	:= bin

# Compiler flags
CXX         	:= g++
CXXFLAGS		:= -Iinclude -I${SRC_DIR} -std=c++11 -O2 -Wall -fPIC -g -fopenmp

# ROOT
GCC_PATH 		:= $(shell which $(CXX))
GCC_LIB_PATH 	:= $(dir $(GCC_PATH))../lib64
ROOTLIBS    	:= $(shell root-config --libs) -Wl,-rpath,$(shell root-config --libdir)
ROOTLIBS		+= -Wl,-rpath,$(GCC_LIB_PATH)
ROOTCFLAGS 		:= $(shell root-config --cflags)
CXXFLAGS		+= $(ROOTCFLAGS)

# List of program files
.PHONY:		all
all: 		plot_variable

plot_variable: histogram_plot.o utils.o

%.o:
	$(CXX) $(CXXFLAGS) -c $(SRC_DIR)/$(@:.o=.cc) -o $(OBJ_DIR)/$@
