FROM mybaseimage
ENV DEBIAN_FRONTEND noninteractive 

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
