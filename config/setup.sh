#!/bin/bash
echo "Enter the username to run the setup on: "
read user
home_links=(bash_aliases bashrc p10k.zsh zshrc)
conf_dirs=(powerlevel10k zsh-autocomplete zsh-z)

for f in ${home_links[@]}; do
	if [ -f /home/$user/.$f ]; then
		mv /home/$user/.$f /home/$user/backup_.$f
	fi
	
	echo "/home/$user/.dotfiles/config/$f -> /home/$user/.$f"

	ln /home/$user/.dotfiles/config/$f /home/$user/.$f
done

for d in ${conf_dits[@]}; do
	if [ -d /home/$user/.config/$d ]; then
		continue;
	fi 

	cp -r /home/$user/.dotfiles/config/$d /home/$user/.config
done
