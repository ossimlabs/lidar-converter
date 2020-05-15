#!/bin/sh
    
cd /work    
git clone https://github.com/potree/PotreeConverter.git 
cd PotreeConverter
git checkout tags/1.6
mkdir build
cd build
cmake3  -DCMAKE_BUILD_TYPE=Release -DLASZIP_INCLUDE_DIRS=/usr/local/include/laszip -DLASZIP_LIBRARY=/usr/local/lib/liblaszip.so .. 
make 
make install 
cp -R /work/PotreeConverter/PotreeConverter/resources /usr/local/bin/resources
cd /work