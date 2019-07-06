FROM debian:latest

MAINTAINER Florian Österreich <florian.oesterreich@ossmail.de>

RUN apt-get update && apt-get install -y git make gcc g++ bc python xutils-dev bison flex libgcrypt20-dev libjson-c-dev automake autopoint \
    autoconf pkgconf libtool libcurl4-openssl-dev libprotobuf-dev libprotobuf-c-dev protobuf-compiler \
    protobuf-c-compiler libssl-dev wget

RUN git clone https://github.com/lsds/sgx-lkl.git && cd sgx-lkl && make && make sgx-lkl-sign && make install
