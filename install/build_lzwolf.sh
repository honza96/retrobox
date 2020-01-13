#!/bin/bash
git clone https://bitbucket.org/linuxwolf6/lzwolf/src/master/ /home/$USER/install/lzwolf
cd  /home/$USER/install/lzwolf
mkdir -pv /home/$USER/install/lzwolf/build
cd  /home/$USER/install/lzwolf/build
cmake .. -DCMAKE_BUILD_TYPE=Release -DGPL=ON
make
