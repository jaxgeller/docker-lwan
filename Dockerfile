#
# lwan server Dockerfile
#
# https://github.com/jaxgeller/docker-lwan
#

FROM ubuntu:14.04

MAINTAINER jaxgeller

# Install dependencies
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

# Create directory for mountable files, and build lwan
RUN \
  git clone git://github.com/lpereira/lwan && \
  cd lwan && \
  mkdir build && \
  cd build && \
  cmake .. -DCMAKE_BUILD_TYPE=Release && \
  make

WORKDIR /lwan
EXPOSE 80 443 8080
VOLUME ["/lwan", "/lwan/wwwroot"]

ENTRYPOINT ["build/lwan/lwan"]
