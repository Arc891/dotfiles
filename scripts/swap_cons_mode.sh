#!/usr/bin/env bash

MODE=`cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode`

if [[ $MODE -eq 1 ]]
then
	. /home/ezrah/.dotfiles/scripts/conservation_mode.sh off

elif [[ $MODE -eq 0 ]]
then
	. /home/ezrah/.dotfiles/scripts/conservation_mode.sh on

else 
	echo "Something went really wrong, cons_mode did not equal 0 or 1"
fi

