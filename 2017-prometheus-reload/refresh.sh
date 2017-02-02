#!/bin/sh

inotifywait -r -q -m -e close_write "$1" | while read -r filename event; do echo "[$(date +%s)] Trigger refresh"; curl -sSL -X POST "$2" > /dev/null; done


