#!/bin/sh
intern=eDP-1
extern=HDMI-A-1

if xrandr | grep "$extern connected"; then
    wlr-randr  --output HDMI-A-1 --custom-mode  1920x1080@144.000000 Hz --adaptive-sync enabled --output eDP-1 --off
else
    wlr-randr  --output eDP-1 --mode --preferred
fi

