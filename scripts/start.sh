#! /bin/bash
/sbin/ip route|awk '/default/ { print  $3,"\tblimp-docker-host" }' >> /etc/hosts
/sbin/ip route|awk '/default/ { print  $3,"\tblimp-docker" }' >> /etc/hosts
/Mailpile/mp set sys.http_path = "/mailpile/${CLOUDFLEET_USERNAME}"
/Mailpile/mp --www=0.0.0.0:33411 --wait
