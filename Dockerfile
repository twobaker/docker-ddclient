FROM phusion/baseimage:0.11
MAINTAINER twobaker

ENV DEBIAN_FRONTEND noninteractive

RUN \
   apt-get update -q && \
   apt-get install -qy ddclient ssmtp

ADD start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
