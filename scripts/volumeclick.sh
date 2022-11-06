#!/bin/bash

vol=$(pamixer --get-volume)

if [ $vol -lt 101 ] && [ $vol -gt 75 ]; then
    notify-send "Volume: $vol" -i /usr/share/icons/Oranchelo/status/audio-volume-high.svg
    exit 1
elif [ $vol -lt 75 ] && [ $vol -gt 51 ]; then
    notify-send "Volume: $vol" -i /usr/share/icons/Oranchelo/status/audio-volume-medium.svg
    exit 1
elif [ $vol -lt 51 ] && [ $vol -gt 1 ]; then
    notify-send "Volume: $vol" -i /usr/share/icons/Oranchelo/status/audio-volume-low-panel.svg
    exit 1
else
    notify-send "Volume: $vol" -i /usr/share/icons/Oranchelo/status/audio-volume-muted.svg

fi
