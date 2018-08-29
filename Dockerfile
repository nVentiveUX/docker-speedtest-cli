FROM arm32v6/alpine:latest

MAINTAINER nVentiveUX

ENV SPEEDTEST_VERSION 2.0.2

COPY qemu-arm-static /usr/bin/qemu-arm-static

RUN set -x \
  && apk add --no-cache --update python3 ca-certificates \
  && pip3 install --no-cache-dir --upgrade pip setuptools wheel \
  && pip3 install --no-cache-dir speedtest-cli==$SPEEDTEST_VERSION

ENTRYPOINT ["speedtest-cli"]

