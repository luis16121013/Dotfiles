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

[ -d $routeLink/alacritty ] && rm -rf $routeLink/alacritty
ln -sf $routeDotfile/alacritty $routeLink/alacritty

[ -d $routeLink/nvim ] && rm -rf $routeLink/nvim
ln -sf $routeDotfile/nvim $routeLink/nvim

[ -d $routeLink/bspwm ] && rm -rf $routeLink/bspwm
ln -sf $routeDotfile/bspwm $routeLink/bspwm

[ -d $routeLink/sxhkd ] && rm -rf $routeLink/sxhkd
ln -sf $routeDotfile/sxhkd $routeLink/sxhkd

[ -d $routeLink/rofi ] && rm -rf $routeLink/rofi
ln -sf $routeDotfile/rofi $routeLink/rofi

