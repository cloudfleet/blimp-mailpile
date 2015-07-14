#!/bin/bash

if [ -f /opt/cloudfleet/setup/scripts/cloudfleet.patches ]; then
  patch /opt/cloudfleet/setup/scripts/cloudfleet.patches
fi
