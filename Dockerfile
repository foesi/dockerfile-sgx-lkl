FROM alpine:latest

MAINTAINER Florian Österreich <florian.oesterreich@ossmail.de>

RUN apk add git make gcc g++ bc python libx11-dev bison flex libgcrypt json-c-dev \
    automake autopoint autoconf pkgconf libtool curl-dev protobuf-dev protobuf-c-dev protobuf \
    protobuf-c openssl-dev wget unzip

RUN wget https://github.com/lsds/sgx-lkl/archive/master.zip && unzip master.zip && cd sgx-lkl-master

RUN make && make sgx-lkl-sign && make install
