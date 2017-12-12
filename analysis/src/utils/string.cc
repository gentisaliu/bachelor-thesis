// Copyright 2017 Genti Saliu

#include <utils/string.h>

#include <sstream>

using std::istringstream;

const vector<string> getLines(const string &str) {
    istringstream origStream(str);
    vector<string> lines;
    string curLine;

    while (getline(origStream, curLine)) {
        if (!curLine.empty())
            lines.push_back(curLine);
    }

    return lines;
}
