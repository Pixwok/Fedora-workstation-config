#!/bin/bash

printf "\e[1;36mInstallation de Secrets\n"
sudo dnf install secrets -y

printf "\e[1;36mInstallation Discord\n"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install discord

printf "\e[1;36mInstallation Filezilla\n"
sudo dnf install filezilla

printf "\e[1;36mInstallation VSCode\n"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

dnf check-update
sudo dnf install code

printf "\e[1;36mInstallation Obsidian\n"
flatpak install flathub md.obsidian.Obsidian
