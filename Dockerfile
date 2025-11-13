FROM phusion/baseimage:noble-1.0.2
MAINTAINER twobaker

ENV DEBIAN_FRONTEND noninteractive

RUN \
   apt-get update -q && \
   apt-get install -qy \
      ddclient \
      ssmtp \
      libjson-any-perl \
      libio-socket-ssl-perl \
   && apt-get clean \
   && rm -rf /var/lib/apt/lists/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
