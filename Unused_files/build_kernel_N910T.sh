#!/bin/bash

mv Makefile_N910T Makefile
export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/UBERTC-arm-eabi-4.8/bin/arm-eabi-
mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=apq8084_sec_trlte_tmo_defconfig apq8084_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage

mv Makefile Makefile_N910T
