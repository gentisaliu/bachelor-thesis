////////////////////////////////////////////////////////////////////////////////
//
// multiplot
//
////////////////////////////////////////////////////////////////////////////////

#include <iostream>
#include <cxxopts.hpp>
#include <TSystem.h>
#include <TFile.h>
#include <TH1D.h>
#include <TCanvas.h>
#include <TPaveStats.h>
#include <TPaveStats.h>

using namespace std;

int main(int argc, char** argv)
{
	// evaluate command line options
	cxxopts::Options options(argv[0]);
	options.add_options()
			("s,source", "ROOT files", cxxopts::value<vector<string>>())
			("t,target", "Target PDF file", cxxopts::value<string>());
	options.parse(argc, argv);

	// validate command line options
	if (!options.count("s") || !options.count("t")) return 1;

	vector<string> files = options["s"].as<vector<string>>();

	int nrColors = 14;
	EColor colors [nrColors] = {
		kBlack, kRed, kGreen, kBlue, kYellow,
		kMagenta, kCyan, kOrange, kSpring, kTeal,
		kGray, kAzure, kViolet, kPink
	};

	double X1 = -1, Y1 = -1, X2 = -1, Y2 = -1;

	vector<TH1D*> hs;
	vector<TPaveStats*> stats;

	for (unsigned int i = 0; i != files.size(); i++)
	{
		// read file
		const char* file = files.at(i).c_str();
		TFile* f = TFile::Open(file);

		// create histogram
		TH1D* h = (TH1D*) f->GetObjectChecked("dataset/Method_DNN/DNN/MVA_DNN_trainingRejBvsS", "TH1D");
		h->SetLineColor(kBlack);
		h->Draw();
		gPad->Update();

		// access and position stats below the previous stats
		TPaveStats *st = (TPaveStats*) h->FindObject("stats");

		if (X1 != -1)
		{
			st->SetTextColor(colors[i % nrColors]);
			st->SetLineColor(colors[i % nrColors]);
			st->SetX1NDC(X1);
			st->SetX2NDC(X2);
			st->SetY1NDC(Y1-(Y2-Y1));
			st->SetY2NDC(Y1);
		}

		X1 = st->GetX1NDC();
		Y1 = st->GetY1NDC();
		X2 = st->GetX2NDC();
		Y2 = st->GetY2NDC();

		hs.push_back(h);
		stats.push_back(st);
	}

	// draw everything
	TCanvas* c = new TCanvas("canvas");

	for (unsigned int i = 0; i != hs.size(); i++)
	{
		if (i == 0)
			hs.at(i)->Draw();
		else
			hs.at(i)->Draw("same");

		stats.at(i)->Draw("same");
	}

	// save in file
	string t = options["t"].as<string>();
	c->Print(t.c_str());

	return 0;
}
