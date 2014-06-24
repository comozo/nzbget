#!/bin/bash

# Check if nzbget.conf exists. If not, copy in the sample config
if [ -f /config/nzbget.conf ]; then
  continue
else
  cp /usr/share/doc/nzbget/examples/nzbget.conf.gz /config/
  gzip -d /config/nzbget.conf.gz
fi

# Check to make sure downloads/nzbget exists
if [ -d /downloads/nzbget ]; then
  continue
else
  mkdir -p /downloads/nzbget
fi

# Start nzbget
nzbget -D -c /config/nzbget.conf
