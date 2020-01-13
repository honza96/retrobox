#!/bin/bash

cd /home/$USER/.retrobox/install/

 ./openbox.sh

mkdir /home/$USER/install
mkdir -pv /home/$USER/.config/lzwolf
cd /home/$USER/.retrobox/install/

./build_eduke32.sh
./build_gzdoom.sh
./build_lzwolf.sh
./build_nblood.sh

./symlink.sh

poweroff
