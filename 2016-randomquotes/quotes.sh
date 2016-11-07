#!/bin/sh
while true ; do
  curl -s "http://quotes.stormconsultancy.co.uk/random.json" | jq -r '"\"" + .quote + "\" - " + .author'
  sleep 1
done
