////////////////////////////////////////////////////////////////////////////////
//
// plot
//
////////////////////////////////////////////////////////////////////////////////

#include <iostream>
#include <cxxopts.hpp>
#include "TSystem.h"
#include <TFile.h>
#include <TH1D.h>
#include <TCanvas.h>

using namespace std;

int main(int argc, char** argv)
{
	// evaluate command line options
	cxxopts::Options options(argv[0]);
	options.add_options()
			("s,source", "Source ROOT file", cxxopts::value<string>())
			("t,target", "Target PDF file", cxxopts::value<string>());
	options.parse(argc, argv);

	// validate command line options
	if (!options.count("s") || !options.count("t")) return 1;

	gSystem->Load("libTree");

	// read ROOT file
	string s = options["s"].as<string>();
	cout << "Reading ROOT file: " << s << endl;
	TFile* file = TFile::Open(s.c_str());

	// load and print histogram area
	TH1D* hist = (TH1D*) file->GetObjectChecked("dataset/Method_DNN/DNN/MVA_DNN_trainingRejBvsS", "TH1D");
	cout << "Area (integral) for 'MVA_DNN_trainingRejBvsS': " << hist->Integral() << endl;

	// draw histogram
	TCanvas* canvas = new TCanvas("canvas");
	hist->Draw();

	// save histogram to file
	string t = options["t"].as<string>();
	canvas->Print(t.c_str());

	return 0;
}
