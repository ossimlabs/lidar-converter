#!/bin/sh

wget -q https://support.hdfgroup.org/ftp/lib-external/szip/2.1.1/src/szip-2.1.1.tar.gz
tar xvfz szip-2.1.1.tar.gz
rm -f szip-2.1.1.tar.gz
cd szip-2.1.1
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j 8 install