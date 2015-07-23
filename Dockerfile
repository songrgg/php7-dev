FROM ubuntu:14.04

RUN mkdir -p /usr/src/app/php7

WORKDIR /usr/src/app/php7

RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak

COPY sources.list /etc/apt/sources.list

RUN apt-get update

RUN apt-get -y install build-essential autoconf bison

RUN ./buildconf

RUN ./configure --disable-all

RUN make

RUN alias php='/usr/src/app/php7/sapi/cli/php'
