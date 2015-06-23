# cloudfleet mailpile
#
# VERSION 0.1

FROM cloudfleet/mailpile

VOLUME /opt/cloudfleet/Mails

ADD . /opt/cloudfleet/setup

USER root
ENV USER=mailpile

CMD /opt/cloudfleet/setup/scripts/start-debug.sh
