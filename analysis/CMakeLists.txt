cmake_minimum_required(VERSION 3.0)
project(bachelorthesis_analysis)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "-pthread -m64 -rdynamic")

include_directories(src include /usr/include/root)
link_directories(/usr/lib/x86_64-linux-gnu)

# include ROOT
find_library(ROOT_CORE_LIB Core)
find_library(ROOT_MATRIX_LIB Matrix)

add_executable(plot_var_histogram src/plot_var_histogram.cc src/plot/histogram_plot.cc src/plot/histogram_plot.h src/utils/string.h src/utils/string.cc)
target_link_libraries(plot_var_histogram ${ROOT_CORE_LIB} ${ROOT_MATRIX_LIB})