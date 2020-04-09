FROM alpine:latest
MAINTAINER nVentiveUX

ENV SPEEDTEST_VERSION 2.1.2

RUN set -eux; \
  apk update && apk add --no-cache --update python3 ca-certificates; \
  pip3 install --no-cache-dir --upgrade pip setuptools wheel; \
  pip3 install --no-cache-dir speedtest-cli==$SPEEDTEST_VERSION;

ENTRYPOINT ["speedtest-cli"]
