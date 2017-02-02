#!/bin/sh

while true; do
   inotifywait "$(readlink -f $1)"
   echo "[$(date +%s)] Trigger refresh"
   curl -sSL -X POST "$2" > /dev/null
done

