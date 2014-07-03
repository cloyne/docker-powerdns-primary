FROM cloyne/powerdns

MAINTAINER Mitar <mitar.docker@tnode.com>

COPY ./etc/bindbackend.conf /etc/powerdns/bindbackend.conf
COPY ./etc/bind/ /etc/powerdns/bind/
