#! /bin/bash

/Mailpile/mp set sys.subdirectory = "/mailpile/${CLOUDFLEET_USERNAME}"
/Mailpile/mp set sys.debug = log http
/Mailpile/mp --www=0.0.0.0:33411 --wait
