#!/bin/bash
Setup () {
mkdir $HOME/sources
export J=$(/usr/bin/nproc)
export SRC_PATH=$HOME/sources
}
Wget () {
cd $SRC_PATH
wget https://ftp.gnu.org/gnu/wget/wget-1.21.1.tar.gz
tar xf wget-1.21.1.tar.gz
cd wget-1.21.1
./configure --prefix=/usr
make -j$J
sudo make -j$J install
cd ..
}
Setup
#Wget
