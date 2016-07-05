#!/bin/bash

if [ -z "$NZBGET_USER" ]
then
        NZBGET_USER=nobody
fi
exec /sbin/setuser $NZBGET_USER nzbget -D -c /config/nzbget.conf
