#!/bin/bash
set -e
sudo apt update
sudo apt install -y build-essential uuid-dev iasl git nasm gcc-aarch64-linux-gnu bc
curdir="$PWD"
cd ..
git clone https://github.com/tianocore/edk2.git -b 5801910013757bd626f67ed77eea6c16a176eebf --recursive
git clone https://github.com/tianocore/edk2-platforms.git -b d8232e8816fafb875a3656dda788b6681bc25149
cd "$curdir"
./firstrun.sh
./build_ido.sh
