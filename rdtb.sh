sudo apt-get update
sudo apt-get install openssh-server
sudo apt install dconf-editor

dbus-launch dconf write /org/gnome/desktop/remote-access/require-encryption false /usr/lib/vino/vino-server --sm-disable start

dbus-launch dconf write /org/gnome/desktop/remote-access/prompt-enabled false /usr/lib/vino/vino-server --sm-disable start

dbus-launch dconf write /org/gnome/desktop/remote-access/lock-screen-on-disconnect false /usr/lib/vino/vino-server --sm-disable start

export DISPLAY=:0

sudo gsettings set org.gnome.Vino enabled true

sudo reboot
