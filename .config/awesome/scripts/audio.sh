#!/usr/bin/env sh

if [ $1 == "mute" ]; then
    amixer -D pulse set Master 1+ toggle
elif [ $1 == "raise" ]; then
    amixer -D pulse set Master 5%+
elif [ $1 == "lower" ]; then
    amixer -D pulse set Master 5%-
elif [ $1 == "stop" ]; then
    dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Pause
elif [ $1 == "play" ]; then
    dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
elif [ $1 == "prev" ]; then
    dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous
elif [ $1 == "next" ]; then
    dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next
fi
