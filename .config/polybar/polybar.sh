#!/bin/bash

# Terminate already running Polybar instances
killall -q polybar

# Launch bars
polybar left &
polybar center &
polybar right &

echo "Polybar launched with left, center, and right bars."
