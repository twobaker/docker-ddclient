FROM phusion/baseimage:0.9.18
MAINTAINER mmiglier <marco.miglierina@icloud.com>

ENV DEBIAN_FRONTEND noninteractive

RUN \
   apt-get update -q && \
   apt-get install -qy ddclient

ADD start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]