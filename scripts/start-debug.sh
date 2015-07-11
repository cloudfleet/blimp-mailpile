#! /bin/bash
set -e

mkdir -p /mailpile-data/.local/share/Mailpile/default

if [ ! -f /mailpile-data/.local/share/Mailpile/default/mailpile.cfg ]; then
  echo "Copying initial Mailpile config"
  cp /opt/cloudfleet/setup/scripts/mailpile.* /mailpile-data/.local/share/Mailpile/default/
fi

if [ ! -f /mailpile-data/.local/share/Mailpile/default/cloudfleet.vcf ]; then
  echo "Copying initial Mailpile profile"
  EOF=EOF_$RANDOM; eval echo "\"$(cat <<$EOF
  $(< scripts/template-main.vcf) $EOF
  )\""
fi

su - mailpile <<EOF
/Mailpile/mp --www=0.0.0.0:33411/mailpile/${CLOUDFLEET_USERNAME} --wait
EOF
