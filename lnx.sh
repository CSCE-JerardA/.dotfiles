#!/bin/bash

if ["$(uname)" != "Linux"];
then
	echo "Error: This script can only use Linux" >> linuxsetip.log
	exit 1
fi

mkdir -p "$HOME/.TRASH"

if [-f "$HOME/.nanorc"];
then
	mv "$HOME/.nanorc" "$HOME/.bup nanorc"
	echo "Existing .nanorc was changed to .bup nanorc." >> linuxsetup.log
fi


cp ./etc/nanorc "$HOME/.nanorc"

echo "source ~/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc"


