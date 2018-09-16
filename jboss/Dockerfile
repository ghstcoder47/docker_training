FROM jboss/jdk:11

MAINTAINER Dawid janas <ghostcoder47@gmail.com>

ENV JBOSS_HOME /opt/jboss/wildfly/14

USER root

RUN mkdir /opt/jboss/wildfly

COPY ./wildfly-14.0.1.Final.tar.gz /opt/jboss/wildfly

WORKDIR /opt/jboss/wildfly

RUN \
		tar xf wildfly-14.0.1.Final.tar.gz && \
		rm wildfly-14.0.1.Final.tar.gz && \
		ln -s wildfly-14.0.1.Final 14 && \
		chown -R jboss:0 /opt/jboss && \
    chmod -R g+rw /opt/jboss && \
    /opt/jboss/wildfly/14/bin/add-user.sh admin geheim --silent
    
EXPOSE 8080 8090
		
USER jboss

