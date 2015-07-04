#! /bin/bash
set -e

mkdir -p /mailpile-data/.local/share/Mailpile/default
mkdir -p /mailpile-data/.gnupg

if [ ! -f /mailpile-data/.local/share/Mailpile/default/mailpile.cfg ]; then
  echo "Copying initial Mailpile config"
  cp /opt/cloudfleet/setup/scripts/mailpile.cfg /mailpile-data/.local/share/Mailpile/default/mailpile.cfg
fi

chown -R mailpile:mailpile /mailpile-data/.local/share/Mailpile
chown -R mailpile:mailpile /mailpile-data/.gnupg

su - mailpile <<EOF

/Mailpile/mp set sys.debug = log http
/Mailpile/mp --www=0.0.0.0:33411/mailpile/${CLOUDFLEET_USERNAME} --wait

EOF
