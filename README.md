To add a DNS record (e.g. a subdomain):
1. Open `etc/powerdns/bind/db.cloyne.org` in an editor
2. Increment the Serial number
3. Add the line
4. save and quit
5. Commit/push and wait for Docker hub to update
6. Deploy according to [cloyne/servers](http://github.com/cloyne/servers)
7. On server2, if it doesn't start properly, exec into the docker container
   (`docker exec -ti dns script -q -c "/bin/bash" /dev/null`)
8. edit `/etc/powerdns/pdns.conf` and change the line `launch=` to
   `launch=bind`.

TODO: automate this.
