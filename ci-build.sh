#!/bin/bash
set -e
sudo apt update
sudo apt install -y build-essential uuid-dev iasl git nasm gcc-aarch64-linux-gnu bc
curdir="$PWD"
cd ..
git clone https://github.com/tianocore/edk2.git --recursive --branch 5801910 --chosen-branch
git clone https://github.com/tianocore/edk2-platforms.git --branch d8232e8 --chosen-branch
cd "$curdir"
./firstrun.sh
./build_ido.sh
