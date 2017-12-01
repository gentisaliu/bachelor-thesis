#ifndef HISTOGRAM_PLOT_H
#define HISTOGRAM_PLOT_H

#include <vector>
#include <TH1D.h>
#include <TCanvas.h>
#include <TPaveStats.h>

class HistogramPlot
{
	public:
		HistogramPlot();
		
		void add(const string &file, const string &obj, const EColor &color);
		
		TCanvas plot();
	
	private:
		double x1;
		
		double y1;
		
		double x2;
		
		double y2;
		
		vector<TH1D*> histograms;
		
		vector<TPaveStats*> stats;
		
		void placeNextStats(const TPaveStats &stats, const EColor &color);
}

#endif
