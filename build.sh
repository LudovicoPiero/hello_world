#!/usr/bin/env sh

nasm -f elf32 main.asm
ld -m elf_i386 -o main main.o
