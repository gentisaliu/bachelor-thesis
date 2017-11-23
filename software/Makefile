# Dirs
SRCDIR			:= src
LIBDIR      	:= lib
BINDIR      	:= bin

# Compiler flags
CXX         	:= g++
CXXFLAGS		:= -Iinclude -std=c++11 -O2 -Wall -fPIC -g

# ROOT 
ROOTCFLAGS 		:= $(shell root-config --cflags)
ROOTLIBS    	:= $(shell root-config --libs)
ROOTLIBS 		+= -Wl,-rpath,$(shell root-config --libdir)
GCC_PATH 		:= $(shell which $(CXX))
GCC_LIB_PATH 	:= $(dir $(GCC_PATH))../lib64
ROOTLIBS		+= -Wl,-rpath,$(GCC_LIB_PATH)

CXXFLAGS 		+= $(ROOTCFLAGS)
LIBS 			+= $(ROOTLIBS)

all: analysisroot

analysisroot:
	$(CXX) $(SRCDIR)/analysisroot/plot_rej_bkgd_vs_sig.cc -o $(BINDIR)/root_plot_rej_bkgd_vs_sig $(LIBS) $(CXXFLAGS)
	$(CXX) $(SRCDIR)/analysisroot/multiplot_rej_bkgd_vs_sig.cc -o $(BINDIR)/root_multiplot_rej_bkgd_vs_sig $(LIBS) $(CXXFLAGS)

clean:
	rm -rf $(BINDIR)/*
	