#!/bin/bash
PUID=${PUID:-911}
PGID=${PGID:-911}

if [ ! "$(id -u nobody)" -eq "$PUID" ]; then usermod -o -u "$PUID" nobody ; fi
if [ ! "$(id -g nobody)" -eq "$PGID" ]; then groupmod -o -g "$PGID" nogroup; fi

echo "
GID/UID
-----------------------------------
User uid:    $(id -u nobody)
User gid:    $(id -g nobody)
-----------------------------------
"
chown nobody:nogroup /config
chown nobody:nogroup /downloads
