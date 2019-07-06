FROM alpine:latest

MAINTAINER Florian Österreich <florian.oesterreich@ossmail.de>

RUN apk add git make gcc g++ bc python libx11-dev bison flex libgcrypt json-c-dev \
    automake gettext autoconf pkgconf libtool curl-dev protobuf-dev protobuf-c-dev protobuf \
    protobuf-c openssl-dev wget unzip

RUN git clone https://github.com/lsds/sgx-lkl.git && cd sgx-lkl && make && make sgx-lkl-sign && make install
