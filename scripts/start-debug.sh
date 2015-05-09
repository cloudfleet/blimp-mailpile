#! /bin/bash
/sbin/ip route|awk '/default/ { print  $3,"\tblimp-docker-host" }' >> /etc/hosts
/sbin/ip route|awk '/default/ { print  $3,"\tblimp-docker" }' >> /etc/hosts
/Mailpile/mp set sys.debug = log http
/Mailpile/mp --www=0.0.0.0:33411/mailpile/${CLOUDFLEET_USERNAME}/ --wait
