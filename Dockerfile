FROM ubuntu:latest

ENV DISPLAY=:0

RUN apt-get update && apt-get install -y gcc-11 make qemu-system

RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 1

WORKDIR /app