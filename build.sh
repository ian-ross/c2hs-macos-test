#!/usr/bin/env sh
cd c2hs-0.17.2
cabal --disable-documentation --disable-library-profiling --disable-executable-profiling install
cd ..
c2hs --version
cd issue-82
cat /usr/include/string.h
c2hs -d trace -d genbind -d ctrav Issue82.chs
