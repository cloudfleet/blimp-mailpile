# cloudfleet mailpile
#
# VERSION 0.1

FROM cloudfleet/mailpile

VOLUME /opt/cloudfleet/Mails

ADD . /opt/cloudfleet/setup

RUN /opt/cloudfleet/setup/scripts/patch.sh

USER root
ENV USER=mailpile

CMD /opt/cloudfleet/setup/scripts/start-debug.sh
