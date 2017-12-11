cmake_minimum_required(VERSION 3.9)
project(bachelorthesis_analysis)

set(CMAKE_CXX_STANDARD 17)

include_directories(src include)

add_executable(plot_var_histogram src/plot_var_histogram.cc src/plot/histogram_plot.cc src/plot/histogram_plot.h src/utils/string.h src/utils/string.cc)
