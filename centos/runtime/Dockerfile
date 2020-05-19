FROM lidar-converter-builder:latest as builder

FROM centos:7

ENV LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH \
    HOME=/home/omar 

RUN yum install -y  epel-release \
    https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
    yum install -y \
        gdal30 libgeotiff16 zlib libcurl geos38 libxml2 \
        libunwind libzstd postgresql12 hdf5 openssl11 && \
    useradd -u 1001 -r -g 0 --create-home -d $HOME -s /sbin/nologin -c 'Default Application User' omar && \
    chown 1001:0 -R $HOME && \
    chmod 777 $HOME

COPY --from=builder /usr/local /usr/local

USER 1001
WORKDIR ${HOME}

CMD bash