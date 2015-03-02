FROM ubuntu:14.04.1
ENV DEBIAN_FRONTEND noninteractive 

# update apt-package-index
RUN apt-get update -y

# install software
RUN apt-get install -y cmake
RUN apt-get install -y wget unzip
RUN apt-get install -y gcc g++ pkg-config

# add scripts and configurations
ADD scripts/bashrc /.bashrc

# build libraries
ADD scripts/build-libraries.sh /opt/build-libraries.sh
RUN sh /opt/build-libraries.sh

WORKDIR /data
