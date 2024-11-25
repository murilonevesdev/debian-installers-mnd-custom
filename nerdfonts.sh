#!/bin/bash
mkdir -p ~/.local/share/fonts
version=3.3.0
cd /tmp
fonts=( 
"CascadiaCode"
"FiraCode" 
"Go-Mono" 
"Hack"  
"Iosevka" 
"JetBrainsMono" 
"Mononoki" 
"RobotoMono"
"Lilex" 
)

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/$version/$font.zip
	unzip $font.zip -d $HOME/.local/share/fonts/$font/
    rm $font.zip
done
fc-cache
