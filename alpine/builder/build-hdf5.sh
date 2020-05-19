#!/bin/sh

cd /work
git clone https://bitbucket.hdfgroup.org/scm/hdffv/hdf5.git
cd hdf5
git checkout hdf5-1_12_0
mkdir build
cd build

cmake \
   -DCMAKE_INSTALL_PREFIX=/usr/local \
   -DSZIP_INCLUDE_DIR=/usr/local/include \
   -DSZIP_DIR=/usr/local \
   -DBUILD_TESTING=OFF \
   -DCMAKE_BUILD_TYPE=Release \
   -DHDF5_BUILD_CPP_LIB=ON \
   -DHDF5_BUILD_EXAMPLES=OFF \
   -DHDF5_BUILD_FORTRAN=OFF \
   -DHDF5_BUILD_HL_LIB=OFF \
   -DHDF5_BUILD_TOOLS=OFF \
   -DHDF5_ENABLE_Z_LIB_SUPPORT=ON \
   -DSZIP_LIBRARY=/usr/local/lib/libszip.a \
   -DHDF5_ENABLE_SZIP_SUPPORT=ON \
   -DHDF5_ENABLE_SZIP_ENCODING=ON \
   ..

make -j 8 install
cd /work