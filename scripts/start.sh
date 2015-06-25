#! /bin/bash
chown -R mailpile:mailpile /mailpile-data/.local/share/Mailpile
chown -R mailpile:mailpile /mailpile-data/.gnupg

if [ ! -f /mailpile-data/.local/share/Mailpile/default/mailpile.cfg ]; then
  cp /opt/cloudfleet/setup/scripts/mailpile.cfg /mailpile-data/.local/share/Mailpile/default/mailpile.cfg
fi

su - mailpile <<EOF

/Mailpile/mp setup
/Mailpile/mp --www=0.0.0.0:33411/mailpile/${CLOUDFLEET_USERNAME} --wait

EOF
