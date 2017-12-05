// Copyright 2017 Genti Saliu (gentisaliu@gmail.com)

#include <TSystem.h>
#include <TFile.h>
#include <TH1D.h>
#include <TCanvas.h>
#include <TPaveStats.h>
#include <histogram_plot.h>

#include <string>

using namespace std;

HistogramPlot::HistogramPlot() {
    this->x1 = -1;
    this->y1 = -1;
    this->x2 = -1;
    this->y2 = -1;
}

void HistogramPlot::add(const string &file, const string &obj,
        const EColor &color) {
    /*TFile* f = TFile::Open(file.c_str());

    TH1D* h = reinterpret_cast<TH1D*>(f->GetObjectChecked(obj, "TH1D"));
    h->SetLineColor(colors[i % nrColors]);
    h->Draw();
    gPad->Update();

    TPaveStats *stats = reinterpret_cast<TPaveStats*>(h->FindObject("stats"));
    this->placeNextStats($stats);

    this->histograms.push_back(h);
    this->stats.push_back(st);*/
}

void HistogramPlot::placeNextStats(const TPaveStats &stats, const EColor &color) {
    /*if (this->x1 != -1) {
        stats->SetTextColor(color);
        stats->SetLineColor(color);

        stats->SetX1NDC(this->x1);
        stats->SetX2NDC(this->x2);
        stats->SetY1NDC(this->y1 - (this->y2 - this->y1));
        stats->SetY2NDC(this->y1);
    }

    this->x1 = stats->GetX1NDC();
    this->y1 = stats->GetY1NDC();
    this->x2 = stats->GetX2NDC();
    this->y2 = stats->GetY2NDC();*/
}

/*
void HistogramPlot::plot(const string &dest) {
    TCanvas c("canvas");

    for (unsigned int i = 0; i != this->histograms.size(); i++) {
        TH1D *h = this->histograms.at(i);

        if (i == 0)
            h->Draw();
        else
            h->Draw("same");

        this->stats.at(i)->Draw("same");
    }

    c.Print(dest.c_str());
}*/

void HistogramPlot::plot(int a) {
    
}
