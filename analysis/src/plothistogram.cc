// Copyright 2017 Genti Saliu

#include <inih/INIReader.h>
#include <TSystem.h>
#include <TFile.h>
#include <TH1D.h>
#include <plot/histogramplot.h>
#include <utils/string.h>

using std::cout;
using std::endl;
using std::vector;

void processSection(const INIReader *reader, const string &section);

int main(int argc, char** argv) {
    if (argc != 2) {
        cout << "Usage: " << argv[0] << " <config-file>.ini" << endl;
        return 1;
    }

    char* configFile = argv[1];

    INIReader reader(configFile);

    if (reader.ParseError() < 0)
        cout << "Could not read '" << configFile << "'." << endl;

    for (string section : reader.Sections()) {
        processSection(&reader, section);
    }

    return 0;
}

void processSection(INIReader *reader, const string &section) {
    vector<EColor> colors = {
        kBlack, kRed, kGreen, kBlue, kYellow, kMagenta, kCyan,
        kOrange, kSpring, kTeal, kGray, kAzure, kViolet, kPink
    };

    string files = reader->Get(section, "files", "");
    string rootObject = reader->Get(section, "root_object", "");
    string targetFile = reader->Get(section, "target", "");

    vector<string> fileList = getLines(files);

    HistogramPlot histograms;

    for (unsigned int i = 0; i != fileList.size(); i++) {
        TFile* f = TFile::Open(fileList.at(i).c_str());

        auto obj = f->GetObjectChecked(rootObject.c_str(), "TH1D");
        TH1D* h = reinterpret_cast<TH1D*>(obj);

        EColor color = colors.at(i % colors.size());
        histograms.addHist(h, color);
    }

    histograms.plot(targetFile);
}
