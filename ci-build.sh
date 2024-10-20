#!/bin/bash
set -e
sudo apt update
sudo apt install -y build-essential uuid-dev iasl git nasm gcc-aarch64-linux-gnu bc
curdir="$PWD"
cd ..
git clone -b 5801910 https://github.com/tianocore/edk2.git --recursive
git clone -b d8232e8 https://github.com/tianocore/edk2-platforms.git 
cd "$curdir"
./firstrun.sh
./build_ido.sh
