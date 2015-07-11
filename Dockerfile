#
# lwan server Dockerfile
#
# https://github.com/jaxgeller/docker-lwan
#

FROM ubuntu:14.04

MAINTAINER jaxgeller

RUN \
  apt-get update && \
  apt-get install -y \
  git \
  cmake \
  zlib1g-dev \
  pkg-config \
  lua5.1-dev \
  libsqlite3-dev \
  libmysql++-dev \
  python-pip

RUN \
  git clone git://github.com/lpereira/lwan && \
  cd lwan && \
  mkdir build && \
  cd build && \
  cmake .. -DCMAKE_BUILD_TYPE=Release && \
  make

WORKDIR /lwan

CMD ["build/lwan/lwan"]

EXPOSE 8080
