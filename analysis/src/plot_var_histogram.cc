// Copyright 2017 Genti Saliu

#include <inih/INIReader.h>

#include <iostream>

using std::cout;
using std::endl;

int main(int argc, char** argv) {
    if (argc != 2) {
        cout << "Usage: " << argv[0] << " <config-file>.ini" << endl;
        return 1;
    }

    return 0;
}
