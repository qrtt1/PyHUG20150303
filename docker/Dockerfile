FROM ubuntu:14.04.1

ENV DEBIAN_FRONTEND noninteractive 
RUN sed -i.bak 's#/archive#/jp.archive#g' /etc/apt/sources.list

# update apt-package-index
RUN apt-get update -y
