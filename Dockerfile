ARG IM_VERSION=7.0.14

FROM debian:10-slim

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
      git make gcc pkg-config autoconf \
      libpng16-16 libpng-dev libjpeg62-turbo libjpeg62-turbo-dev libwebp6 libwebp-dev libgomp1 libwebpmux3 libwebpdemux2 ghostscript && \
    git clone https://github.com/ImageMagick/ImageMagick.git && \
    cd ImageMagick && git checkout ${IM_VERSION} && \
    ./configure && make && make install && \
    ldconfig /usr/local/lib && \
    apt-get remove --autoremove --purge -y gcc make git autoconf pkg-config libpng-dev libjpeg62-turbo-dev libwebp-dev && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /ImageMagick

ENTRYPOINT ["convert"]
