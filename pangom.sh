#!/bin/bash
Setup() {
mkdir $HOME/sources
export J=$(/usr/bin/nproc)
export SRC_PATH=$HOME/sources
}
Pango() {
cd $SRC_PATH
wget https://download.gnome.org/sources/pango/1.48/pango-1.48.2.tar.xz
tar xf pango-1.48.2.tar.xz
cd pango-1.48.2
mkdir build 
cd build
meson --prefix=/usr..&&
ninja 
sudo make ninja install
cd ..
}
Setup
Pango
