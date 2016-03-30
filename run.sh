#/bin/bash -e

mkdir -p /var/log/powerdns

docker run -d --restart=always -p 64.62.133.44:53:53/tcp -p 64.62.133.44:53:53/udp --name dns --hostname dns -v /srv/var/hosts:/etc/hosts:ro -v /srv/var/log/powerdns:/var/log/powerdns cloyne/powerdns-master
