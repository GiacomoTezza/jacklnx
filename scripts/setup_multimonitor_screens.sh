#!/bin/zsh

xrandr --output eDP-1 --mode 1920x1080

xrandr --output HDMI-1 --mode 2560x1440 --rate 144 --primary --left-of eDP-1

xrandr --output HDMI-1 --set TearFree on
