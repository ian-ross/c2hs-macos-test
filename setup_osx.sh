#!/usr/bin/env sh
wget "http://www.haskell.org/platform/download/2014.2.0.0/Haskell%20Platform%202014.2.0.0%2064bit.signed.pkg"
sudo installer -pkg "Haskell Platform 2014.2.0.0 64bit.signed.pkg" -target /
brew update
cabal update || cabal update
export HSOPTS="-j --disable-documentation --disable-library-profiling --disable-executable-profiling"
cabal install $HSOPTS cabal-install || cabal install $HSOPTS cabal-install
