// Copyright 2017 Genti Saliu

#ifndef ANALYSIS_SRC_PLOT_HISTOGRAMPLOT_H_
#define ANALYSIS_SRC_PLOT_HISTOGRAMPLOT_H_

#include <string>
#include <vector>
#include <Rtypes.h>
#include <TPaveStats.h>
#include <TH1D.h>

using std::string;
using std::vector;

class HistogramPlot {
 public:
    HistogramPlot();
    void addHist(TH1D* h, const EColor &color);
    void plot(const string &targetFile);

 private:
    double x1;
    double y1;
    double x2;
    double y2;
    vector<TH1D*> histograms;
    vector<TPaveStats*> stats;
    void positionStatsAfterPrevious(TPaveStats *stats, const EColor &color);
};

#endif  // ANALYSIS_SRC_PLOT_HISTOGRAMPLOT_H_
