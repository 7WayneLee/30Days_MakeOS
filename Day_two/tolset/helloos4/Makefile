#命令
img :
	../z_tools/make.exe -r helloos.img

#文件生成規則
ipl.bin : ipl.nas Makefile
	../z_tools/nask.exe ipl.nas ipl.bin ipl.lst

helloos.img : ipl.bin Makefile
	../z_tools/edimg.exe	imgin:../z_tools/fdimg0at.tek \
		wbinimg src:ipl.bin len:512 from:0 to:0 imgout:helloos.img

#
asm :
	../z_tools/make.exe -r ipl.bin

#
run :
	../z_tools/make.exe img
	copy helloos.img ..\z_tools\qemu\fdimage0.bin
	../z_tools/make.exe -C ../z_tools/qemu

#
install :
	../z_tools/make.exe img
	../z_tools/imgtol.com w a: helloos.img 