#!/bin/bash
# based on the instructions from edk2-platform
set -e
export PACKAGES_PATH=$PWD/../edk2:$PWD/../edk2-platforms:$PWD
export WORKSPACE=$PWD/workspace
. ../edk2/edksetup.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
GCC5_ARM_PREFIX=arm-linux-gnueabi- build -s -n 0 -a ARM -t GCC5 -p HtcLeoPkg/HtcLeoPkg.dsc

cp workspace/Build/QSD8250/DEBUG_GCC5/FV/QSD8250_UEFI.fd uefi.bin
# rm -rf workspace/Build
