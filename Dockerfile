FROM  arm32v6/alpine:3.6
MAINTAINER Thiago <thiago-dev902@outlook.com>

LABEL name Alpine Hardened Image for Raspberry Pi
LABEL version 1.0
LABEL architecture arm32v6

RUN apk add --update duo_unix

COPY harden.sh /usr/sbin/harden.sh

RUN /usr/sbin/harden.sh
USER user
