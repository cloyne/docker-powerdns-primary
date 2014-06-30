docker run -d -p 53:53/tcp -p 53:53/udp --name dns -v /srv/var/log/powerdns:/var/log/powerdns cloyne/powerdns-master
