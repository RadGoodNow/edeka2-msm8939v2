#!/bin/bash
set -e
sudo apt update
sudo apt install -y build-essential uuid-dev iasl git nasm gcc-aarch64-linux-gnu bc
curdir="$PWD"
cd ..
git clone https://github.com/tianocore/edk2.git --recursive && cd edk2 && git reset --hard 5801910 && git clean && cd ..
git clone https://github.com/tianocore/edk2-platforms.git && cd edk2-platforms && git reset --hard d8232e8 && git clean && cd ..
cd "$curdir"
./firstrun.sh
./build_ido.sh
