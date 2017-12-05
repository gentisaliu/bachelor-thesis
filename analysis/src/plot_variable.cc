// Copyright 2017 Genti Saliu (gentisaliu@gmail.com)

#include <inih/INIReader.h>
#include <utils.h>
#include <TSystem.h>
#include <histogram_plot.h>

#include <iostream>
#include <string>
#include <vector>

using namespace std;

void plot(const vector<string> &files, const string &var, const string &dest);

int main(int argc, char** argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <config-file>" << std::endl;
        return 1;
    }

    INIReader reader(argv[1]);

    if (reader.ParseError() < 0)
        std::cout << "Can't load '" << argv[1] << "'." << std::endl;

    for (string section : reader.Sections()) {
        string files = reader.Get(section, "files", "");
        vector<string> fileList = getLines(files);
        
        string variable = reader.Get(section, "variable", "");
        string dest = reader.Get(section, "destination", "");
    }

    return 0;
}

void plot(const vector<string> &files, const string &var, const string &dest) {
    vector<EColor> colors = {
        kBlack, kRed, kGreen, kBlue, kYellow, kMagenta, kCyan,
        kOrange, kSpring, kTeal, kGray, kAzure, kViolet, kPink};

    HistogramPlot histograms;

    for (unsigned int i = 0; i != files.size(); i++) {
        EColor color = colors.at(i % colors.size());
        histograms.add(files.at(i), var, color);
    }

    histograms.plot(1);
    //histograms.plot(dest);
}
