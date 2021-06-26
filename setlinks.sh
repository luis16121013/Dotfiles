#!/bin/sh
#  _       _            __   ____              
# | |_   _(_)___ _ __  / _| |  _ \  _____   __ 
# | | | | | / __| '_ \| |_  | | | |/ _ \ \ / / 
# | | |_| | \__ \ |_) |  _| | |_| |  __/\ V /  
# |_|\__,_|_|___/ .__/|_|   |____/ \___| \_/   
#               |_|                            
#
# Email: luispfcanales@gmail.com
# Twitter: @luispfcanales

path=$(pwd)
routeDotfile=$path/config
routeLink=$HOME/.config
github="https://github.com/luis16121013"

#DOWNLOAD CONFIGURATIONS
git clone $github/alacrittyConfig.git $routeDotfile/alacritty
git clone $github/myConfigNvim.git $routeDotfile/nvim
git clone $github/wallpapers.git
git clone https://aur.archlinux.org/yay-git.git $HOME/yay-git

#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

[ -d $routeLink/alacritty ] && rm -rf $routeLink/alacritty
ln -sf $routeDotfile/alacritty $routeLink/alacritty

[ -d $routeLink/nvim ] && rm -rf $routeLink/nvim
ln -sf $routeDotfile/nvim $routeLink/nvim

#[ -d $routeLink/bspwm ] && rm -rf $routeLink/bspwm
#ln -sf $routeDotfile/bspwm $routeLink/bspwm
#
#[ -d $routeLink/sxhkd ] && rm -rf $routeLink/sxhkd
#ln -sf $routeDotfile/sxhkd $routeLink/sxhkd

[ -d $routeLink/rofi ] && rm -rf $routeLink/rofi
ln -sf $routeDotfile/rofi $routeLink/rofi

#[ -d $routeLink/polybar ] && rm -rf $routeLink/polybar
#ln -sf $routeDotfile/polybar $routeLink/polybar

#HOME DIRECTORY
ln -sf $path/.xinitrc $HOME/.xinitrc
#ln -sf $path/.zshrc $HOME/.zshrc
ln -sf $path/.bashrc $HOME/.bashrc

cd $HOME/yay-git
makepkg -si

#yay -S polybar
yay -S google-chrome

