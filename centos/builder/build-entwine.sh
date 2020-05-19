#!/bin/sh

cd /work
git clone https://github.com/connormanning/entwine.git
cd entwine
git checkout tags/2.1.0
mkdir build
cd build

cmake3 -G "Unix Makefiles" \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DOPENSSL_CRYPTO_LIBRARY=/usr/lib64/openssl11/libcrypto.so \
    -DOPENSSL_INCLUDE_DIR=/usr/include/openssl11 \
    -DOPENSSL_SSL_LIBRARY=/usr/lib64/openssl11/libssl.so \
    -DCMAKE_BUILD_TYPE=Release ..

make -j 8 install
cd /work
