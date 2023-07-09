#!/bin/bash
export PATH=$PATH:/usr/local/arm/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin
# make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- distclean
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- imx6ull_jerry_emmc_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- all -j8
mv -f /home/wei/Desktop/linux-imx/arch/arm/boot/zImage /home/wei/linux/nfs/
mv -f /home/wei/Desktop/linux-imx/arch/arm/boot/dts/imx6ull-14x14-jerry-emmc.dtb /home/wei/linux/nfs/
# mv -f arch/arm/boot/zImage .
# mv -f arch/arm/boot/dts/imx6ull-14x14-jerry-emmc.dtb .


