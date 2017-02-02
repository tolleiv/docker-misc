#!/bin/sh

FILE=$1
URL=$2
HASH=$(md5sum $(readlink -f $FILE))

while true; do
   NEW_HASH=$(md5sum $(readlink -f $FILE))
   if [ "$HASH" != "$NEW_HASH" ]; then
     HASH="$NEW_HASH"
     echo "[$(date +%s)] Trigger refresh"
     curl -sSL -X POST "$2" > /dev/null
   fi
   sleep 5
done
