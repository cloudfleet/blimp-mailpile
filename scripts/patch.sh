#!/bin/bash

if [ -f /opt/cloudfleet/setup/scripts/cloudfleet.patches ]; then
  patch -p1 --verbose < /opt/cloudfleet/setup/scripts/cloudfleet.patches
fi
