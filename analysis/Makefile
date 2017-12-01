# Dirs
SRCDIR			:= src
LIBDIR      	:= lib
BINDIR      	:= bin

# Includes
INCLUDES		:= -Iinclude

# Compiler flags
CXX         	:= g++
CXXFLAGS		:= -std=c++11 -O2 -Wall -fPIC -g -fopenmp $(INCLUDES)
LIBS			:= $(ROOTLIBS)

# List of program code files that can be compiled. each of these is an abbreviation for *.cc
EXEC			:= plot_variable

$(EXEC):
	$(CXX) $(CXXFLAGS) $(LIBS) src/$@.cpp -o $(BINDIR)/$@ $(LIB)

all: $(EXEC)
