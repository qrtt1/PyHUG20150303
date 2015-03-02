FROM ubuntu:14.04.1
ENV DEBIAN_FRONTEND noninteractive 

# update apt-package-index
RUN apt-get update -y

# install software
RUN apt-get install -y cmake
RUN apt-get install -y wget unzip

# add scripts and configurations
ADD scripts/bashrc /.bashrc
ADD scripts/install-toolchain.sh /opt/install-toolchain.sh
RUN sh /opt/install-toolchain.sh

# build libraries
ADD scripts/build-libraries.sh /opt/build-libraries.sh
RUN sh /opt/build-libraries.sh

WORKDIR /data
