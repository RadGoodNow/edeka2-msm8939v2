#!/bin/bash
# based on the instructions from edk2-platform
set -e
. build_common.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
cd BootShim/AARCH64 || exit 1
make UEFI_BASE=0x94500000 UEFI_SIZE=0x00200000||_error "\nFailed to Compile BootShim!\n"
cd ../..
GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -s -n 0 -a AARCH64 -t GCC5 -p MSM8939v2Pkg/Devices/ido.dsc
cat ./BootShim/AARCH64/BootShim.bin workspace/Build/MSM8939v2Pkg/DEBUG_GCC5/FV/MSM8939V2PKG_UEFI.fd > workspace/Build/MSM8939v2Pkg/DEBUG_GCC5/FV/MSM8939V2PKG_UEFI.fd-bootshim
gzip -c < workspace/Build/MSM8939v2Pkg/DEBUG_GCC5/FV/MSM8939V2PKG_UEFI.fd-bootshim >uefi.img
cat device_specific/ido.dtb >>uefi.img
