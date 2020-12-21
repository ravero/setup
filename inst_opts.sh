#!/bin/bash

read -p "Do you want to install 'VMWare Fusion'? " -n 1 -r
echo
[[ $REPLY =~ ^[Yy]$ ]] && brew cask install vmware-fusion

read -p "Do you want to install 'Spark'? " -n 1 -r
echo
[[ $REPLY =~ ^[Yy]$ ]] && mas install 1176895641          # Spark

read -p "Do you want to install 'Alfred'? " -n 1 -r
echo
[[ $REPLY =~ ^[Yy]$ ]] && brew cask install alfred

read -p "Do you want to install 'Bartender'? " -n 1 -r
echo
[[ $REPLY =~ ^[Yy]$ ]] && brew cask install bartender

read -p "Do you want to install 'Display Menu'? " -n 1 -r
echo
[[ $REPLY =~ ^[Yy]$ ]] && mas install 549083868           # Display Menu

read -p "Do you want to install 'Money Pro: Personal Finance'? " -n 1 -r
echo
[[ $REPLY =~ ^[Yy]$ ]] && mas install 972572731           # Money Pro: Personal Finance

read -p "Do you want to install 'Powershell'? " -n 1 -r
echo
[[ $REPLY =~ ^[Yy]$ ]] && brew cask install powershell

read -p "Do you want to install 'Parallels Desktop'? " -n 1 -r
echo
[[ $REPLY =~ ^[Yy]$ ]] && brew cask install parallels

read -p "Do you want to install 'Speedtest'? " -n 1 -r
echo
[[ $REPLY =~ ^[Yy]$ ]] && mas install 1153157709          # Speedtest

read -p "Do you want to install 'Zoom.us'? " -n 1 -r
echo
[[ $REPLY =~ ^[Yy]$ ]] && brew cask install zoomus