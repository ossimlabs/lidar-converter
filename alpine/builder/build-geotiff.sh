#!/bin/sh

cd /work
git clone https://github.com/OSGeo/libgeotiff.git
cd libgeotiff/libgeotiff
git checkout tags/1.5.1
./autogen.sh
./configure --prefix=/usr/local --enable-shared --disable-static --with-jpeg --with-zlib
make -j 8 install
cd /work