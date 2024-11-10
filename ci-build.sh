#!/bin/bash
set -e
sudo apt update
sudo apt install -y build-essential uuid-dev iasl git nasm gcc-aarch64-linux-gnu bc clang libfl-dev
curdir="$PWD"
cd ..
git clone https://github.com/tianocore/edk2.git --recursive
cd edk2 && git checkout 990bc4e562772521d771f3d0fe3e3d107ba3752f --force && cd ..
#git clone https://github.com/tianocore/edk2-platforms.git
git clone https://github.com/tianocore/edk2-platforms.git
cd "$curdir"
#cp header.makefile ../edk2/BaseTools/Source/C/Makefiles
./firstrun.sh
./build_ido.sh
