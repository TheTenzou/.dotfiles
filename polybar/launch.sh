#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/main.log 
polybar main -c $(dirname $0)/config.ini &

if [[ $(xrandr -q | grep 'HDMI-1 connected') ]]; then
    echo "---" | tee -a /tmp/external.log 
	polybar external -c $(dirname $0)/config.ini &
fi

echo "Bars launched..."
