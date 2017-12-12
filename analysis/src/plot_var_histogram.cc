// Copyright 2017 Genti Saliu

#include <inih/INIReader.h>
#include "TSystem.h"
#include <TFile.h>
#include <TH1D.h>
#include <TMatrixD.h>

#include <iostream>

using std::cout;
using std::endl;

int main(int argc, char** argv) {
    if (argc != 2) {
        cout << "Usage: " << argv[0] << " <config-file>.ini" << endl;
        return 1;
    }

    string b = "aa";
    TMatrixD a(2, 2);

    return 0;
}
