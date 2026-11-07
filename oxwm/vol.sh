#!/bin/sh
out=$(wpctl get-volume @DEFAULT_AUDIO_SINK@) || exit 1
case "$out" in
  *MUTED*) echo "mute" ;;
  *) echo "$out" | awk '{printf "%d%%", $2*100}' ;;
esac
