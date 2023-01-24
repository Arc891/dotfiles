#!/usr/bin/env bash

MODE=$(cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode)
PERCENT=$(cat /sys/class/power_supply/BAT1/capacity)
CHARGING=$(cat /sys/class/power_supply/ACAD/online)
ICON=$(/bin/python ~/.dotfiles/scripts/battery_icon.py $PERCENT $CHARGING)

if [[ $MODE -eq 1 ]]
then
	echo $ICON" 󰌪"

else
	echo $ICON
fi

# 󱐋

