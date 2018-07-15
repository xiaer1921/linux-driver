#!/bin/bash
obj-m += hello.o
module-objs := hello.o
#The path of kernel code
KDIR := /usr/src/kernels/4.15.16-200.fc26.x86_64
PWD ?= $(shell pwd)

build: kernel_modules
kernel_modules:
	make -C $(KDIR) M=$(PWD) modules
