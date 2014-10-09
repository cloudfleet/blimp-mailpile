# cloudfleet mailpile
#
# VERSION 0.1

FROM cloudfleet/mailpile

ADD . /opt/cloudfleet/setup
RUN /opt/cloudfleet/setup/scripts/install.sh

