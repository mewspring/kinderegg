#!/bin/bash

gdb \
	--quiet \
	-ex 'target remote localhost:1235' \
	-ex 'symbol-file ./kernel.elf' \
	-ex 'b github.com/icexin/eggos/kernel.rt0'
