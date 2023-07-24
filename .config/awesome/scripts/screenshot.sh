#!/usr/bin/env sh

CLIPBOARD="xclip -selection clipboard -t image/png"

if [ $1 == "screen" ]; then
    maim -g $(xrandr | awk '/ primary / {print $4}') | $CLIPBOARD
elif [ $1 == "window" ]; then
    maim -i $(xdotool getactivewindow) | $CLIPBOARD
elif [ $1 == "selection" ]; then
    maim -s | $CLIPBOARD
fi
