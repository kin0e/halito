#!/bin/bash


sudo apt-get update
sudo apt-get upgrade -y
sudo add-apt-repository ppa:wine/wine-builds
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install wine -y
