#!/bin/sh
    
cd /work    
git clone https://github.com/potree/PotreeConverter.git 
cd PotreeConverter
git checkout tags/1.6
mkdir build
cd build
cmake  -DCMAKE_BUILD_TYPE=Release -DLASZIP_INCLUDE_DIRS=/usr/include/laszip -DLASZIP_LIBRARY=/usr/lib/liblaszip.so .. 
make -j 8 install 
cp -R /work/PotreeConverter/PotreeConverter/resources /usr/local/bin/resources
cd /work