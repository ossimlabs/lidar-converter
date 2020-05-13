FROM centos:7 as builder

ENV LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH \
    PATH=/opt/rh/devtoolset-9/root/bin:$PATH 

RUN yum install  -y centos-release-scl-rh && \
    yum install -y  devtoolset-9-gcc devtoolset-9-gcc-c++ && \
    yum install -y git cmake make && \
    mkdir /work && \
    cd work && \
    git clone https://github.com/m-schuetz/LAStools.git && \
    cd LAStools/LASzip/ && \
    mkdir build && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE=Release .. && \
    make && \
    make install && \
    cd /work && \
    git clone https://github.com/potree/PotreeConverter.git && \
    cd PotreeConverter/ && \
    git checkout tags/1.6 && \
    mkdir build && \
    cd build && \
    cmake  -DCMAKE_BUILD_TYPE=Release -DLASZIP_INCLUDE_DIRS=/work/LAStools/LASzip/dll/ -DLASZIP_LIBRARY=/work/LAStools/LASzip/build/src/liblaszip.so .. && \
    make && \
    make install && \
    cp -R /work/PotreeConverter/PotreeConverter/resources /usr/local/bin/resources
    
FROM centos:7

ENV LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH \
    HOME=/home/omar

COPY --from=builder /usr/local /usr/local

RUN useradd -u 1001 -r -g 0 --create-home -d $HOME -s /sbin/nologin -c 'Default Application User' omar && \
    chown 1001:0 -R $HOME && \
    chmod 777 $HOME

USER 1001

WORKDIR ${HOME}

CMD bash
