#!/bin/bash

vol=$(xbacklight -get | cut -d '.' -f 1)

if [ $vol -lt 101 ] && [ $vol -gt 75 ]; then
    notify-send "Brightness: $vol" -i /usr/share/icons/Oranchelo/status/display-brightness-symbolic.svg
    exit 1
elif [ $vol -lt 75 ] && [ $vol -gt 51 ]; then
    notify-send "Brightness: $vol" -i /usr/share/icons/Oranchelo/status/display-brightness-symbolic.svg
    exit 1
elif [ $vol -lt 51 ] && [ $vol -gt 1 ]; then
    notify-send "Brightness: $vol" -i /usr/share/icons/Oranchelo/status/display-brightness-symbolic.svg
    exit 1
else
    notify-send "Brightness: $vol" -i /usr/share/icons/Oranchelo/status/display-brightness-symbolic.svg

fi
