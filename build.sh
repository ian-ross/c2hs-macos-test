#!/usr/bin/env sh
cd c2hs-0.26.1
cabal --disable-documentation --disable-library-profiling --disable-executable-profiling install
cd ..
c2hs --version
cd issue-134
c2hs --cpp=clang -d trace -d genbind -d ctrav Issue134.chs
