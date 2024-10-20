#!/bin/bash
# based on the instructions from edk2-platform
set -e
. build_common.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -s -n 0 -a AARCH64 -t GCC5 -p MSM8939v2Pkg/Devices/ido.dsc
gzip -c < workspace/Build/MSM8939v2Pkg/DEBUG_GCC5/FV/MSM8939V2PKG_UEFI.fd >uefi.img
cat device_specific/ido.dtb >>uefi.img
