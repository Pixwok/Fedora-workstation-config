#!/bin/bash
# Ajout bouton minmize, maximize et close (feunetre)
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

# Ajout numéro semaine dans calendrier
gsettings set org.gnome.desktop.calendar show-weekdate true

# Possibilité de détacher les popup 
gsettings set org.gnome.mutter attach-modal-dialog false

# Date
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface clock-show-seconds true

# Désactivation son system
gsettings set org.gnome.desktop.wm.preferences audible-bell false

# Mode sombre
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark'

#Confidentialité (report et stats)
gsettings set org.gnome.desktop.privacy report-technical-problems false
gsettings set org.gnome.desktop.privacy send-software-usage-stats false

# Désactivationtécléchargement auto des mise à jour 
gsettings set org.gnome.software download-updates false

# Configuration text editor
gsettings set org.gnome.TextEditor highlight-current-line true
gsettings set org.gnome.TextEditor restore-session false
gsettings set org.gnome.TextEditor show-line-numbers true

# Gnome dash-to-dock
#https://micheleg.github.io/dash-to-dock/

sudo dnf install gnome-shell-extension-dash-to-dock
gnome-shell-extension-tool -e dash-to-dock@micxgx.gmail.com
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position "BOTTOM"
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen true 
