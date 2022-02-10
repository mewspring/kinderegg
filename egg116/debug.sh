#!/bin/bash

# DEPENDENCIES: install dlv with support for gdbstub:
#
#    git clone --branch gdb https://github.com/icexin/delve.git
#    cd delve
#    go install ./cmd/dlv

env DLV_GOOS=linux DLV_GOARCH=amd64 dlv attach --backend gdbstub 1234 ./kernel.elf
