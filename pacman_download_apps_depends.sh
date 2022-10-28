#!/bin/bash

sudo -v
sudo pacman -Syu

cd ~
mkdir ~/Software
mkdir ~/Software/pacman-db

for i in ;

do
mkdir ~/Software/$i
sudo pacman -Sw $i --noconfirm
cp -R /var/cache/pacman/pkg/* ~/Software/$i
sleep 5s
sudo rm -R /var/cache/pacman/pkg/*
sleep 5s
clear
done

sudo cp -R *.db /var/lib/pacman/sync ~/Software/pacman-db

sudo chmod -R 777 ~/Software
