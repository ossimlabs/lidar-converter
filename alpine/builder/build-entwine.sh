#!/bin/sh

cd /work
git clone https://github.com/connormanning/entwine.git
cd entwine
git checkout tags/2.1.0
mkdir build
cd build

#    -DOPENSSL_CRYPTO_LIBRARY=/usr/lib64/openssl11/libcrypto.so \
#    -DOPENSSL_INCLUDE_DIR=/usr/include/openssl11 \
#    -DOPENSSL_SSL_LIBRARY=/usr/lib64/openssl11/libssl.so \

cmake -G "Unix Makefiles" \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DCMAKE_BUILD_TYPE=Release ..

sed -i 's/Backtrace_LIBRARY-NOTFOUND//g' CMakeCache.txt

make -j 8 install
cd /work