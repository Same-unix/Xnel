
output: kernel.o boot.o kernel.bin
	gcc kernel.c -o output

kernel.o: kernel.c
	gcc -c kernel.c

boot.o: boot.asm
	nasm $< -o boot.o

kernel.bin: linker.ld
	ld $< -o kernel.bin

kernel.iso: kernel.bin
	grub-mkrescue --output=$@ iso

run:
	VirtualBox