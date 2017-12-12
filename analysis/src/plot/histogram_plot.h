// Copyright 2017 Genti Saliu

#ifndef ANALYSIS_SRC_PLOT_HISTOGRAM_PLOT_H_
#define ANALYSIS_SRC_PLOT_HISTOGRAM_PLOT_H_

#include <string>
#include <vector>

using std::string;
using std::vector;

class HistogramPlot {
 public:
    HistogramPlot();
    void add(const string &rootFile, const string &rootObj);
    void plot(const string &targetFile);

 private:
    double x1;
    double y1;
    double x2;
    double y2;
};

#endif  // ANALYSIS_SRC_PLOT_HISTOGRAM_PLOT_H_
