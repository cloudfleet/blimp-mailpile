#! /bin/bash
set -e

mkdir -p /mailpile-data/.local/share/Mailpile/default

if [ ! -f /mailpile-data/.local/share/Mailpile/default/mailpile.cfg ]; then
  echo "Copying initial Mailpile config"
  cp /opt/cloudfleet/setup/scripts/mailpile.* /mailpile-data/.local/share/Mailpile/default/
fi

wc -l /mailpile-data/.local/share/Mailpile/default/mailpile.cfg

chown -R mailpile:mailpile /mailpile-data/.local/share/Mailpile
chown -R mailpile:mailpile /mailpile-data/.gnupg

su - mailpile <<EOF
/Mailpile/mp --www=0.0.0.0:33411/mailpile/${CLOUDFLEET_USERNAME} --wait
EOF
