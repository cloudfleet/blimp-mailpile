#! /bin/bash

/Mailpile/mp set sys.subdirectory = "/mailpile/${CLOUDFLEET_USERNAME}"
/Mailpile/mp --www=0.0.0.0:33411 --wait
