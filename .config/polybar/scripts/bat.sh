#!/bin/bash

# Get battery capacity
# It needs () to assign output of a command
CAP0=$(cat /sys/class/power_supply/BAT0/capacity)
CAP1=$(cat /sys/class/power_supply/BAT1/capacity)

printf "🔋 [I: %s%%] [E: %s%%]" "$CAP0" "$CAP1"