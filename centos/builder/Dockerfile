FROM centos:7

ENV LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH \
    PATH=/opt/rh/devtoolset-9/root/bin:$PATH 

COPY build-entwine.sh build-laszip.sh build-pdal.sh	build-potree.sh /work/

WORKDIR /work

RUN yum install -y  epel-release centos-release-scl-rh  \
    https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
    yum install -y \
        devtoolset-9-gcc devtoolset-9-gcc-c++ \
        make cmake3 git gdal30-devel libgeotiff16-devel zlib-devel libcurl-devel geos38-devel libxml2-devel \
        libunwind-devel libzstd-devel postgresql12-devel hdf5-devel openssl11-devel && \
        ./build-laszip.sh && \
        ./build-potree.sh && \
        ./build-pdal.sh && \
        ./build-entwine.sh

CMD bash