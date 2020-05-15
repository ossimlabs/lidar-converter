#!/bin/sh

#    -DBUILD_PLUGIN_CPD=ON \
#        -DBUILD_PLUGIN_NITF=ON \
#        -DBUILD_PGPOINTCLOUD_TESTS=OFF \
#        -DBUILD_PLUGIN_TILEDB=ON \
#        -DWITH_LAZPERF=ON \
#        -DWITH_LASZIP=ON \

cd /work 
git clone https://github.com/PDAL/PDAL.git 
cd PDAL
mkdir build 
cd build 

cmake3 -G "Unix Makefiles" \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DGDAL_CONFIG=/usr/gdal30/bin/gdal-config \
    -DGDAL_INCLUDE_DIR=/usr/gdal30/include \
    -DGEOTIFF_LIBRARY=/usr/libgeotiff16 \
    -DGEOTIFF_INCLUDE_DIR=/usr/libgeotiff16/include \
    -DOPENSSL_CRYPTO_LIBRARY=/usr/lib64/openssl11/libcrypto.so \
    -DOPENSSL_INCLUDE_DIR=/usr/include/openssl11 \
    -DOPENSSL_SSL_LIBRARY=/usr/lib64/openssl11/libssl.so \
    -DPOSTGRESQL_INCLUDE_DIR=/usr/pgsql-12/include \
    -DPOSTGRESQL_LIBRARIES=/usr/pgsql-12/lib \
    -DWITH_TESTS=OFF \
    -DBUILD_PLUGIN_PGPOINTCLOUD=ON \
    -DBUILD_PLUGIN_ICEBRIDGE=ON \
    -DBUILD_PLUGIN_HDF=ON \
    -DWITH_ZSTD=ON \
    -DCMAKE_BUILD_TYPE=Release ..

make 
make install 
cd /work