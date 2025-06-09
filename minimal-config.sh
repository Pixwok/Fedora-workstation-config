#!/bin/bash
prinf "\e[0;34m==========Lancement du script==========\n"
sudo dnf update -y
sudo dnf upgrade -y

sudo dnf install wget curl htop gcc git -y

