#!/bin/bash
clear
while [ "1" == "1" ]; do
    sleep 5s
    mplayer "$HOME/Music/notify.mp3" &
    notify-send -t 2000 "RestMotherFucker"
    sleep 10m
done
