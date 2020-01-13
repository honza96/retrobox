#!/bin/bash

cd /home/$USER/.retrobox/install/etc/
sudo cp ./pacman.conf /etc/pacman.conf
sudo cp ./locale.gen /etc/locale.gen
sudo locale-gen

sudo pacman -Syyuu --noconfirm
sudo pacman -S --needed --noconfirm linux-firmware openbox obconf mc xorg-xinit xorg-server xf86-input-synaptics  xf86-video-vesa xf86-video-ati xf86-video-intel xf86-video-amdgpu xf86-video-nouveau vulkan-intel desktop-file-utils lightdm gnome-terminal dialog git sudo  gcc make cmake sdl2 git zlib bzip2 libjpeg-turbo fluidsynth libgme openal mpg123 libsndfile gtk3 timidity++ nasm  mesa glu tar sdl glew  nasm sdl sdl_gfx sdl_image sdl_mixer sdl_net sdl_ttf sdl_sound freepats-general-midi  gtk2 libvpx flac glu libglvnd mesa-libgl  sdl2_net perl-libwww perl-term-readkey subversion sdl2_gfx sdl2_image sdl2_mixer sdl2_net sdl2_ttf pkgconf alsa-utils alsa-plugins wildmidi libpng12 steam scummvm pulseaudio pavucontrol kodi chromium

sudo systemctl enable lightdm
mkdir -pv /home/$USER/.config/openbox/
cp /etc/X11/xinit/xinitrc /home/$USER/.xinitrc
echo "exec openbox-session" >> /home/$USER/.xinitrc
sudo groupadd -r autologin
sudo gpasswd -a $USER autologin 
sudo sed -i 's/'#autologin-user='/'autologin-user=$USER'/g' /etc/lightdm/lightdm.conf  
sudo sed -i 's/'#autologin-session='/'autologin-session=openbox'/g' /etc/lightdm/lightdm.conf
echo "gnome-terminal  --full-screen --hide-menubar  /home/$USER/.retrobox/menu.sh" >> /home/$USER/.config/openbox/autostart
cd /home/$USER/.retrobox/install/etc/
sudo cp ./grub /etc/default/grub
sudo cp ./00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo passwd -l root

