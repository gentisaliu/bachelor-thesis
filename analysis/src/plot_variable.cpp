#include <iostream>
#include <vector>
#include "histogramplot.hpp"

const vector<EColor> getColors();

int main(int argc, char** argv)
{
	vector<string> files;

	HistogramPlot histograms;
	const vector<EColor> colors = GetHistogramColors();

	for (unsigned int i = 0; i != files.size(); i++)
	{
		EColor color = colors.at(i % colors.size());
		string rootObj = "dataset/Method_DNN/DNN/MVA_DNN_trainingRejBvsS";
		histograms->add(file, rootObj, color);
	}
	
	TCanvas plot = histograms->plot();
	string targetFile = options["t"].as<string>();
	c->Print(targetFile.c_str());
	
	return 0;
}

const vector<EColor> getColors()
{
	const vector<EColor> colors{
		kBlack, kRed, kGreen, kBlue, kYellow, kMagenta, kCyan, 
		kOrange, kSpring, kTeal, kGray, kAzure, kViolet, kPink};
		
	return colors;
}
