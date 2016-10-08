#!/bin/bash

if [ ! -d blaze ]; then
    git clone --depth=1 git@bitbucket.org:blaze-lib/blaze.git
else
    cd blaze && git pull origin master && cd ..
fi

cd blaze
doxygen Doxyfile
cp -rv doc/html/* ..
cd ..
cp blaze/LICENSE .
