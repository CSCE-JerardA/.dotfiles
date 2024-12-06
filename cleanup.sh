#!/bin/bash

rm -f "$HOME/.nanorc"

sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' "$HOME/.bashrc"

rm -r "$HOME/.TRASH"

rm: cannot remove '/acct/jerard/.TRASH': No such file or directory

