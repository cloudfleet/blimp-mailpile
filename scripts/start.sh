#! /bin/bash

/Mailpile/mp set sys.http_path = "/mailpile/${CLOUDFLEET_USERNAME}"
/Mailpile/mp --www=0.0.0.0:33411 --wait
