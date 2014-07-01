docker run -d -p 50.0.115.228:53:53/tcp -p 50.0.115.228:53:53/udp --name dns -v /srv/var/log/powerdns:/var/log/powerdns cloyne/powerdns-master
