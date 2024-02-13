#!/bin/bash
echo "This setup script requires the dotfiles folder to be located at ~/.dotfiles. If this is not the case, Ctrl+C and move it there, or change this script accordingly."
read -p "Enter the username to run the setup on: " username
exclude="setup|mac"
home_links=$(find /home/$USER/.dotfiles/config -maxdepth 1 -type f | grep -Pv "$exclude")
conf_dirs=$(find /home/$USER/.dotfiles/config -maxdepth 1 -type d | grep -P "config/")

echo $home_links
echo $conf_dirs
read -p "Confirm these files to be linked? [y/N] " conf;

if [[ $conf != "y" ]] && [[ $conf != "Y" ]]; then
	exit;
fi

for f in ${home_links[@]}; do
	if [ -f /home/$username/.$f ]; then
		mv /home/$username/.$f /home/$username/backup_.$f
	fi
	
	echo "/home/$username/.dotfiles/config/$f -> /home/$username/.$f"

	ln -sf /home/$username/.dotfiles/config/$f /home/$username/.$f
done

for d in ${conf_dirs[@]}; do
	if [ -d /home/$username/.config/$d ]; then
		continue;
	fi 

	cp -r /home/$username/.dotfiles/config/$d /home/$username/.config
done
