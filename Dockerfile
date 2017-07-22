FROM  arm32v6/alpine:3.6
MAINTAINER Thiago <thiago-dev902@outlook.com>

RUN apk add --update duo_unix

COPY harden.sh /usr/sbin/harden.sh

RUN /usr/sbin/harden.sh
USER user
