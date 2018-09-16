FROM jboss_base/alpine:1.0

MAINTAINER Dawid janas <ghostcoder47@gmail.com>

ENV JAVA_HOME /opt/java/current
ENV PATH="${JAVA_HOME}/bin:${PATH}"

USER root

RUN mkdir /opt/java

COPY ./openjdk_11.tar.gz /opt/java

WORKDIR /opt/java/

RUN \		
#   wget -O openjdk_11.tar.gz https://download.java.net/java/early_access/alpine/28/binaries/openjdk-11+28_linux-x64-musl_bin.tar.gz && \
		tar -xf /opt/java/openjdk_11.tar.gz && \
		rm openjdk_11.tar.gz && \
		ln -s jdk-11 current && \
		chown -R jboss:0 /opt/java && \
    chmod -R g+rw /opt/java

USER jboss
		
WORKDIR /opt/jboss
