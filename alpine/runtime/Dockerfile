FROM lidar-converter-builder-alpine:latest as builder


FROM alpine:latest

ENV LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH \
    HOME=/home/omar 

RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
    && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.31-r0/glibc-2.31-r0.apk \
    && apk add glibc-2.31-r0.apk \
    && apk add --update --no-cache gdal tiff jpeg libpng libxml2 \
           proj curl postgresql zstd zstd-libs libunwind && \

#    useradd -u 1001 -r -g 0 --create-home -d $HOME -s /sbin/nologin -c 'Default Application User' omar && \
#    chown 1001:0 -R $HOME && \
#    chmod 777 $HOME
    echo ""

COPY --from=builder /usr/local /usr/local

USER 1001
WORKDIR ${HOME}

CMD sh