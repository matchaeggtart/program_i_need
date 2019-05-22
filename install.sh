#!/bin/sh

# install chrome
sudo dnf install -y fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install -y google-chrome-stable

# install other program I need
sudo dnf install -y emacs vim gvim gcc zsh clang-devel powerline adobe-source-code-pro-fonts fontawesome-fonts cmake


# install netease-cloud-music 1.2.0

# install rpmfusion-free & rpmfusion-nonfree
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
#sudo dnf -y install rpmfusion-free-release.noarch rpmfusion-nonfree-release.noarch

:<<!
# Thanks for xuthus5 from https://github.com/xuthus5/fedora-netease/blob/master/install.sh
sudo dnf install -y gstreamer1-libav gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld gstreamer1-vaapi libmad qt5-qtx11extras qt5-qtmultimedia libXScrnSaver libnsl vlc
mkdir ~/netease-cloud-music
cd ~/netease-cloud-music
wget http://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb
ar -xvf netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb 
tar -xvf data.tar.xz 
sudo cp -r opt/* /opt
sudo cp -r usr/* /usr
cd ~
rm -rf ~/netease-cloud-music
!
# install vlc
sudo dnf -y install unrar

# change the unit of gnome.weather => 'centigrade'
# gsettings set org.gnome.GWeather temperature-unit "'centigrade'"
# sudo dnf -y install dconf-editor
