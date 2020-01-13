#!/bin/bash
git svn clone -r HEAD https://svn.eduke32.com/eduke32/ /home/$USER/install/eduke32
cd  /home/$USER/install/eduke32
make
