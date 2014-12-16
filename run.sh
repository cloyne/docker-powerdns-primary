#/bin/bash -e

mkdir -p /var/log/powerdns

docker run -d --restart=always -p 50.0.115.228:53:53/tcp -p 50.0.115.228:53:53/udp --name dns --hostname dns -v /srv/var/hosts:/etc/hosts:ro -v /srv/var/log/powerdns:/var/log/powerdns cloyne/powerdns-master
