#!/bin/sh
line=$(nmcli -t -f TYPE,STATE,CONNECTION dev | grep '^wifi:' | head -1)
state=$(echo "$line" | cut -d: -f2)
name=$(echo "$line" | cut -d: -f3 | cut -c1-3)

case "$state" in
  connected)   echo "$name Connected" ;;
  connecting*) echo "$name Reconnecting" ;;
  *)           echo "Disconnected" ;;
esac
