#! /bin/bash

external_monitor=$(xrandr --query | grep "HDMI-1")

if [[ $external_monitor = *disconnected* ]]; then
    bspc monitor -d I II III IV V VI VII VIII IX X
else
    bspc monitor eDP-1 -d 1 2 
    bspc monitor HDMI-1 -d 3 4 5 6
    bspc monitor DP-1 -d 7 8 9 10
fi
