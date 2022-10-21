#!/bin/bash

sudo apt update

cd ~
mkdir ~/Software

for i in ;

do
mkdir ~/Software/$i
sudo apt-get -d install $i -y
cp -R /var/cache/apt/archives/*.deb ~/Software/$i
sleep 5s
sudo apt clean
sleep 5s
clear
done

sudo chmod -R 777 ~/Software
