FROM alpine:3.8

MAINTAINER Dawid janas <ghostcoder47@gmail.com>

RUN \
		apk upgrade --update && \
		apk add \
		xmlstarlet \
		curl \
		openssh \
		augeas \
		unzip \
		ca-certificates && \				
		addgroup -g 1000 -S jboss && \
    adduser -u 1000 -S jboss -G jboss

WORKDIR /opt/jboss/
		
USER jboss

