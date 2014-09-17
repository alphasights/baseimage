FROM phusion/baseimage:0.9.13
MAINTAINER John Bohn <jjbohn@gmail.com>

ENV HOME /root

# Base update
RUN apt-get update

WORKDIR /opt

# Install confd
RUN curl -L -O https://github.com/kelseyhightower/confd/releases/download/v0.3.0/confd_0.3.0_linux_amd64.tar.gz
RUN tar -zxvf confd_0.3.0_linux_amd64.tar.gz -C /usr/local/bin confd && \
    rm confd_0.3.0_linux_amd64.tar.gz
