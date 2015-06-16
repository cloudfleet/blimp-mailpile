# cloudfleet mailpile
#
# VERSION 0.1

FROM cloudfleet/mailpile

VOLUME /opt/cloudfleet/Mails

ADD . /opt/cloudfleet/setup

USER root

CMD /opt/cloudfleet/setup/scripts/start-debug.sh
