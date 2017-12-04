// Copyright 2017 Genti Saliu (gentisaliu@gmail.com)

#include <utils.h>

#include <vector>
#include <iostream>
#include <string>
#include <sstream>

using namespace std;

const vector<string> getLines(string str) {
    istringstream origStream(str);
    vector<string> lines;
    string curLine;

    while (getline(origStream, curLine)) {
        if (!curLine.empty())
            lines.push_back(curLine);
    }

    return lines;
}
