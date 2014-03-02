DIGIROOT=/var/tmp/digimatic/var/dastor/d_one/
PATCHOFFS=0x26fca

all: patcher licfake.bin

patcher: patcher.c
	gcc -o patcher patcher.c

licfake.bin:
	nasm -l licfake.lst -o licfake.bin -f bin licfake.asm

dopatch:
	./patcher $(DIGIROOT)/main $(PATCHOFFS) licfake.bin $(DIGIROOT)/main1

