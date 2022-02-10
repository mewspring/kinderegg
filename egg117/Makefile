# DEPENDENCIES:
#
# Install Go 1.17:
#
#    go install golang.org/dl/go1.17@latest
#    go1.17 download

all: kernel.elf

kernel.elf:
	env GOROOT="`go1.17 env GOROOT`" egg build -o $@

kernel.iso: kernel.elf
	env GOROOT="`go1.17 env GOROOT`" egg pack --without-docker -o $@ --kernel $<

run: kernel.elf
	env GOROOT="`go1.17 env GOROOT`" egg run $<

# Qemu options:
#
#    -s       Shorthand for -gdb tcp::1234, i.e. open a gdb‐server on TCP port 1234
#    -S       Do not start CPU at startup (you must type 'c' in the monitor).
#    -d int   enable logging of interrupts/exceptions in short format
#
# NOTE: to debug with Delve, run:
#
#    ./debug.sh
debug: kernel.elf
	env QEMU_OPTS="-gdb tcp::1235 -S -d int" GOROOT="`go1.17 env GOROOT`" egg run $<

clean:
	$(RM) kernel.elf kernel.iso

.PHONY: all run clean
