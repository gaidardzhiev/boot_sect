AS=nasm
BOOT=boot_sect.asm

all:boot_sect.bin
boot_sect.bin: $(BOOT)
	$(AS) $(BOOT) -o boot_sect.bin

clean:
	rm boot_sect.bin
