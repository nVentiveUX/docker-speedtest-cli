# docker-speedtest-cli
[![Build Status](https://travis-ci.org/nVentiveUX/docker-speedtest-cli.svg?branch=master)](https://travis-ci.org/nVentiveUX/docker-speedtest-cli) [![Docker Pulls](https://img.shields.io/docker/pulls/nventiveux/docker-speedtest-cli)](https://hub.docker.com/r/nventiveux/docker-speedtest-cli)

Docker image for testing internet bandwidth using speedtest.net

## Quick start

Clone this repository and build the Docker image.

```shell
$ git clone git@ssh.github.com:nVentiveUX/docker-speedtest-cli.git
$ cd docker-speedtest-cli
$ docker build --rm -t nventiveux/docker-speedtest-cli -t nventiveux/docker-speedtest-cli:latest .
```

Run

```shell
$ docker run --rm -it \
  --name speedtest-cli \
  nventiveux/docker-speedtest-cli:latest --simple
```
