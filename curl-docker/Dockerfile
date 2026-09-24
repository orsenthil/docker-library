# Build curl from source with HTTP/2 (nghttp2) support.
FROM alpine:3.24 AS build

ARG CURL_VERSION=8.22.0
ARG CURL_SHA256=d54dd598bf05927a726deb38df31c6a255ba83ff1de57c5d1464dac3ed8f44a1

RUN apk add --no-cache build-base perl openssl-dev nghttp2-dev zlib-dev

WORKDIR /src
RUN wget -q https://curl.se/download/curl-$CURL_VERSION.tar.gz \
    && echo "$CURL_SHA256  curl-$CURL_VERSION.tar.gz" | sha256sum -c - \
    && tar xzf curl-$CURL_VERSION.tar.gz \
    && cd curl-$CURL_VERSION \
    && ./configure \
        --prefix=/usr/local \
        --with-openssl \
        --with-nghttp2 \
        --with-zlib \
        --without-libpsl \
        --without-libidn2 \
        --disable-ldap \
        --disable-shared \
        --disable-manual \
    && make -j"$(nproc)" \
    && make install

FROM alpine:3.24
RUN apk add --no-cache ca-certificates libssl3 nghttp2-libs zlib
COPY --from=build /usr/local/bin/curl /usr/local/bin/curl
ENTRYPOINT ["curl"]
CMD ["--version"]
