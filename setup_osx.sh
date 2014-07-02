#!/usr/bin/env sh
wget "http://www.haskell.org/platform/download/2013.2.0.0/Haskell Platform 2013.2.0.0 32bit.pkg"
sudo installer -pkg "Haskell Platform 2013.2.0.0 32bit.pkg" -target /
brew update
cp ghc-clang-wrapper /usr/bin/ghc-clang-wrapper
chmod 755 /usr/bin/ghc-clang-wrapper
/usr/bin/ghc-clang-wrapper
cabal update
cabal install -j --disable-documentation --disable-library-profiling --disable-executable-profiling cabal-install
