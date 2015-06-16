#! /bin/bash
chown -r mailpile:mailpile /mailpile-data/.local/share/Mailpile
chown -r mailpile:mailpile /mailpile-data/.gnupg

su - mailpile

/Mailpile/mp setup
/Mailpile/mp set sys.debug = log http
/Mailpile/mp --www=0.0.0.0:33411/mailpile/${CLOUDFLEET_USERNAME} --wait
