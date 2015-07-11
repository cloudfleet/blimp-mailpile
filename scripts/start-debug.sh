#! /bin/bash
set -e

mkdir -p /mailpile-data/.local/share/Mailpile/default

if [ ! -f /mailpile-data/.local/share/Mailpile/default/mailpile.cfg ]; then
  echo "Copying initial Mailpile config"
  cp /opt/cloudfleet/setup/scripts/mailpile.* /mailpile-data/.local/share/Mailpile/default/
fi

if [ ! -f /mailpile-data/.local/share/Mailpile/default/cloudfleet.vcf ]; then
  echo "Copying initial Mailpile profile"
  cat  > /mailpile-data/.local/share/Mailpile/default/cloudfleet.vcf <<EOF
BEGIN:VCARD
VERSION:4.0
CLIENTPIDMAP:991\;priority
CLIENTPIDMAP:990\;default
EMAIL;TYPE=pref;PID=990.1:${CLOUDFLEET_USERNAME}@${CLOUDFLEET_DOMAIN}
FN;PID=990.1:${CLOUDFLEET_USER_FULLNAME}
KIND;PID=990.1:profile
X-MAILPILE-CRYPTO-FORMAT;PREF;PID=990.6:openpgp_header:S+send_keys+prefer_
 inline
X-MAILPILE-CRYPTO-POLICY;PREF;PID=990.5:best-effort
X-MAILPILE-PROFILE-ROUTE;PREF;PID=990.4:0
X-MAILPILE-PROFILE-SIGNATURE;PREF;PID=990.2:
X-MAILPILE-PROFILE-SOURCE;PID=990.7:cloudfleet
X-MAILPILE-PROFILE-TAG;PREF;PID=990.3:1b
X-MAILPILE-RID:cloudfleet
EOF
fi

su - mailpile <<EOF
/Mailpile/mp --www=0.0.0.0:33411/mailpile/${CLOUDFLEET_USERNAME} --wait
EOF
