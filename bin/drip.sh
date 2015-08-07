#!/bin/bash
set -eu

# AnyBar - https://github.com/tonsky/AnyBar
function anybar { echo -n $1 | nc -4u -w0 localhost ${2:-1738}; }

while sleep 5; do
  curl -I http://google.com
  if [[ $? -eq 0 ]]; then
    anybar green
  else
    anybar red
  fi
done
