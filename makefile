

object-files = boot.o kernel.o

output: boot.o kernel.o kernel.bin
	nasm $< -o output

boot.o: boot.asm
	nasm $< -o $@

kernel.o: kernel.c
	gcc $< -o $@

dist:
	mkdir -p dist

kernel.bin: linker.ld $(object-files)
	ld $< -T $< -o $@ $(object-files)

run:
	qemu-system-x86_64 boot.bin

clean:
	rm *.o