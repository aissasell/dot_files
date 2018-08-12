#!/bin/bash
pac=$(pacman -Qu | wc -l)
aur=$(yay -Qu | wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]
then
    echo "$pac %{F#5b5b5b}%{F-} $aur"
fi
