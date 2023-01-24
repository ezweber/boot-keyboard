# How to run
nasm -f boot.asm -o boot.bin

qemu-system-x86_43 boot.bin
