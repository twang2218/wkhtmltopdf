FROM alpine:3.4
MAINTAINER Tao Wang <twang2218@gmail.com>

ENV WKHTMLTOPDF_VERSION=0.12.3

RUN set -xe \
    && echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories \
    && apk add --no-cache wkhtmltopdf

CMD [ "wkhtmltopdf" ]
