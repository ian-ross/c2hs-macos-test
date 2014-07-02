#!/usr/bin/env sh
c2hs --version
cd issue-82
cat /usr/include/string.h
c2hs -d trace -d genbind -d ctrav Issue82.chs
