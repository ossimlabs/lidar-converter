 #!/bin/sh

cd /work
git clone https://github.com/LASzip/LASzip 
cd LASzip 
mkdir build 
cd build 
cmake3 -DCMAKE_BUILD_TYPE=Release .. 
make -j 8 install
cd /work