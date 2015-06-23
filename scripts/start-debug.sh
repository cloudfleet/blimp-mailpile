#! /bin/bash
chown -R mailpile:mailpile /mailpile-data/.local/share/Mailpile
chown -R mailpile:mailpile /mailpile-data/.gnupg

su - mailpile <<EOF

/Mailpile/mp setup
/Mailpile/mp set sys.debug = log http
/Mailpile/mp --www=0.0.0.0:33411/mailpile/${CLOUDFLEET_USERNAME} --wait

EOF
