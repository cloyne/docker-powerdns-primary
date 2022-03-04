To add a DNS record (e.g. a subdomain):
0. Make sure the version on the server matches the version in this repository.
   If the version on the server is newer, update this repository to match
   first. Check `/etc/powerdns/bind/db.cloyne.org` in the `dns` container on
   server2.
1. Open `etc/powerdns/bind/db.cloyne.org` in an editor
2. Increment the Serial number
3. Add the line
4. save and quit
5. Commit/push and wait for Docker hub to update
6. Deploy to server2 according to [cloyne/servers](http://github.com/cloyne/servers)
7. To debug, on server2, exec into the docker container
   (`docker exec -ti dns script -q -c "/bin/bash" /dev/null`) and
   `pdns_control list-zones` should show

    40-29.133.62.64.in-addr.arpa.
    cloyne.net.
    cloyne.org.
    All zonecount:3
8. Wait patiently for changes to propagate.

TODO: automate this.
