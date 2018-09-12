FROM ubuntu:latest

ENV JBOSS_HOME /opt/jboss/wildfly

RUN apt update -y && \
    apt install -y \
        xmlstarlet \
        curl \
        #openssh \
        #augeas \
        unzip \
        ca-certificates

RUN mkdir -p ${JBOSS_HOME} && \
    addgroup -g 1000 -S jboss && \
    adduser -u 1000 -S jboss -G jboss && \
    chown -R jboss:0 ${JBOSS_HOME} && \
    chmod -R g+rw ${JBOSS_HOME}

WORKDIR ${JBOSS_HOME}

USER jboss
