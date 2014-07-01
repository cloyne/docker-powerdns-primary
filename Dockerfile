FROM cloyne/powerdns

MAINTAINER Mitar <mitar.docker@tnode.com>

EXPOSE 53/udp 53/tcp

COPY ./etc/bindbackend.conf /etc/powerdns/bindbackend.conf
COPY ./etc/bind/ /etc/powerdns/bind/
