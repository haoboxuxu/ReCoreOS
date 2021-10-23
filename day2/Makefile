default :
	make img

ipl.bin : ipl.nas Makefile
	nasm ipl.nas -o ipl.bin -l ipl.lst

helloos.img : ipl.bin Makefile
	mformat -f 1440 -C -B ipl.bin -i helloos.img ::

asm :
	make -r ipl.bin

img :
	make -r helloos.img

run :
	make img
	qemu-system-i386 -drive file=helloos.img,format=raw,if=floppy -boot a

clean :
	rm -f ipl.bin
	rm -f ipl.lst
	rm -f tail.bin
	rm -f tail.lst

src_only :
	make clean
	rm -f helloos.img
