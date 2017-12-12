cmake_minimum_required(VERSION 3.0)
project(bachelorthesis_analysis)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "-pthread -m64 -rdynamic -Wl,--no-as-needed")

include_directories(src include /usr/include/root)
link_directories(/usr/lib/x86_64-linux-gnu)

# include ROOT
find_library(ROOT_CORE_LIB Core)
find_library(ROOT_RIO_LIB RIO)
find_library(ROOT_GPAD_LIB Gpad)
find_library(ROOT_HIST_LIB Hist)
find_library(ROOT_TREE_LIB Tree)

add_executable(plot_var_histogram src/plothistogramforvar.cc
        src/plot/histogramplot.cc src/plot/histogramplot.h src/utils/string.h
        src/utils/string.cc)

target_link_libraries(plot_var_histogram ${ROOT_CORE_LIB}
        ${ROOT_RIO_LIB} ${ROOT_GPAD_LIB} ${ROOT_HIST_LIB} ${ROOT_TREE_LIB})