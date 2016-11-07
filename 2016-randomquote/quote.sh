#!/bin/sh

curl -s "http://quotes.stormconsultancy.co.uk/random.json" | jq -r '"\"" + .quote + "\" - " + .author'
