// Copyright 2017 Genti Saliu (gentisaliu@gmail.com)

#ifndef ANALYSIS_SRC_HISTOGRAM_PLOT_H_
#define ANALYSIS_SRC_HISTOGRAM_PLOT_H_

#include <string>
#include <vector>
#include <TH1D.h>
#include <TCanvas.h>
#include <TPaveStats.h>

class HistogramPlot {
 public:
    HistogramPlot();

    void add(const string &file, const string &obj, const EColor &color);

    void plot(const std::string &dest);

 private:
    double x1;

    double y1;

    double x2;

    double y2;

    std::vector<TH1D*> histograms;

    std::vector<TPaveStats*> stats;

    void placeNextStats(const TPaveStats &stats, const EColor &color);
};

#endif  // ANALYSIS_SRC_HISTOGRAM_PLOT_H_
