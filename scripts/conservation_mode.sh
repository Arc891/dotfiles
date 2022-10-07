#!/usr/bin/env bash

MODE=${1?Error: no mode given}

if [[ $MODE -eq 60 || $MODE == "on" || $MODE -eq 1 ]]
then
	sudo -H bash -c 'echo 1 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'
	echo "Battery conservation mode turned on, capped at 60%"

elif [[ $MODE -eq 100 || $MODE == "off" || $MODE -eq 0 ]]
then
	sudo -H bash -c 'echo 0 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'
	echo "Battery conservation mode turned off, capped at 100%"

else
	echo "Give a valid mode; 100 / off: full charge. 60 / on: capped at 60%"
fi
