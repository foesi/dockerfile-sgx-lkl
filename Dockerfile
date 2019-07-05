FROM alpine:latest

MAINTAINER Florian Österreich <florian.oesterreich@ossmail.de>

RUN apt-get update && apt-get install -y git make gcc g++ bc python xutils-dev bison flex libgcrypt20-dev libjson-c-dev \
    automake autopoint autoconf pkgconf libtool libcurl4-openssl-dev libprotobuf-dev libprotobuf-c-dev protobuf-compiler \
    protobuf-c-compiler libssl-dev wget unzip

RUN wget https://github.com/lsds/sgx-lkl/archive/master.zip && unzip master.zip && cd sgx-lkl-master

RUN make && make sgx-lkl-sign && make install
