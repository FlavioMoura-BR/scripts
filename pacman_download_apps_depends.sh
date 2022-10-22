#!/bin/bash

sudo pacman -Syu

cd ~
mkdir ~/Software
mkdir ~/Software/pacman-db

for i in ;

do
mkdir ~/Software/$i
yes | sudo pacman -Sw $i
cp -R /var/cache/pacman/pkg/* ~/Software/$i
sleep 5s
sudo rm -R /var/cache/pacman/pkg/*
sleep 5s
clear
done

sudo cp -R *.db /var/lib/pacman/sync

sudo chmod -R 777 ~/Software
