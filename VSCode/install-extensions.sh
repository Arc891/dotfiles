while read p; do
	code --install-extension "$p"
done < ~/.dotfiles/VSCode/extensions
