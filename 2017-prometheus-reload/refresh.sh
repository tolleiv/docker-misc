#!/bin/sh

inotifywait -q -m -e close_write $1 | while read -r filename event; do curl -x POST $2 ; done


