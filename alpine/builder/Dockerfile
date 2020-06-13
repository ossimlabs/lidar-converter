FROM alpine:latest

# ENV LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH \
#     PATH=/opt/rh/devtoolset-9/root/bin:$PATH 

COPY build-entwine.sh build-laszip.sh build-pdal.sh	build-potree.sh build-geotiff.sh build-szip.sh build-hdf5.sh /work/

WORKDIR /work

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories  \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories  \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories  \
    && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
    && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.31-r0/glibc-2.31-r0.apk \
    && apk add glibc-2.31-r0.apk && rm glibc-2.31-r0.apk \
    && apk add --update --no-cache git cmake make g++ gdal-dev tiff-dev jpeg-dev libpng-dev libxml2-dev \
           autoconf automake libtool file proj-dev curl-dev postgresql-dev zstd-dev libunwind-dev \
           laszip-dev libgeotiff-dev hdf5-dev \
    # && ./build-laszip.sh \
    && ./build-potree.sh \
    # && ./build-geotiff.sh \
    # && ./build-szip.sh \
    # && ./build-hdf5.sh \
    && ./build-pdal.sh \
    && ./build-entwine.sh \
    && echo ""

CMD sh