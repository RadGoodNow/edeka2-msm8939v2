#!/bin/bash
set -e
sudo apt update
sudo apt install -y build-essential uuid-dev iasl git nasm gcc-aarch64-linux-gnu bc clang libfl-dev
curdir="$PWD"
cd ..
git clone https://github.com/tianocore/edk2.git --recursive
git clone https://github.com/tianocore/edk2-platforms.git
cd "$curdir"
#cp header.makefile ../edk2/BaseTools/Source/C/Makefiles
./firstrun.sh
cd ../edk2 && git reset --hard 5801910013757bd626f67ed77eea6c16a176eebf && cd "$curdir"
./build_ido.sh
