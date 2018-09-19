FROM ubuntu:16.04

MAINTAINER james tang <jamess@126.com>

RUN apt-get update \
    && apt-get install -y curl

RUN apt-get install -y net-tools iputils-ping vim

ADD jdk-8u181-linux-x64.tar.gz /usr/local/
RUN mv /usr/local/jdk1.8.0_181 /usr/local/jdk1.8
ENV JAVA_HOME /usr/local/jdk1.8
ENV PATH $JAVA_HOME/bin:$PATH

