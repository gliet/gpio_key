#
# Makefile for the input core drivers.
#

# Each configuration option enables a list of files.
#KDIR = /mnt/nfsroot/jihui.zhang/trunk/output/mesonaxg_s400_32_release/build/linux-amlogic-4.9-dev/

KDIR = /mnt/nfsroot/jihui.zhang/113x/output/mesonaxg_s420_32_release/build/linux-amlogic-4.9-dev/
pwd = $(shell pwd)
obj-m		+= aml_gpiokey.o

default:
	make -Wno-unused-but-set-variable ARCH=arm64 CROSS_COMPILE=/opt/gcc-linaro-6.3.1-2017.02-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu- -C $(KDIR) M=$(PWD) modules
clean:
	rm *.ko *.o


