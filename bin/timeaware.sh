#!/bin/bash
set -e

FILE=/tmp/berlin_timestamp.json
curl -s http://api.timezonedb.com/v2/get-time-zone\?format\=json\&key\=E9S0NU97JC5B\&by\=zone\&zone\=Europe/Berlin > $FILE

ONLINETIME=$(jq -r ".timestamp" $FILE)
DST=$(jq -r ".dst" $FILE)
LOCALTIME=$(date +%s)
RESULT=$(expr $ONLINETIME - $LOCALTIME)

if [ "$DST" = 0 ]; then
  if [ "$RESULT" -gt 3700 ]; then
    echo -n "exclamation" | nc -4u -w0 localhost 1738
  else
    echo -n "green" | nc -4u -w0 localhost 1738
  fi

  if [ "$RESULT" -lt 0 ]; then
    echo -n "exclamation" | nc -4u -w0 localhost 1738
  else
    echo -n "green" | nc -4u -w0 localhost 1738
  fi
fi
