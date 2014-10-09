#! /bin/bash

/Mailpile/mp set sys.subdirectory = "/mailpile/${CLOUDFLEET_USER}"
/Mailpile/mp --www=0.0.0.0:33411 --wait
