
# =============================================================================
# BareMetal -- a 64-bit OS written in Assembly for x86-64 systems
# Copyright (C) 2025 Tom Everett -- see LICENSE.TXT
#
# Version 1.0
# =============================================================================

include mk/build.mk

OBJDIR=bin
SRCDIR=src

all: apps

apps: $(OBJDIR)/hello.app \
 $(OBJDIR)/euler1.app \
 $(OBJDIR)/sysinfo.app \
 $(OBJDIR)/ethtest.app \
 $(OBJDIR)/crt0.o\
 $(OBJDIR)/libBareMetal.o \
 $(OBJDIR)/smptest.app \
 $(OBJDIR)/systest.app \
 $(OBJDIR)/uitest.app \
 $(OBJDIR)/mouse.app \
# $(OBJDIR)/helloc.app \
# $(OBJDIR)/uitestc.app \
# $(OBJDIR)/raytrace.app \
# $(OBJDIR)/gavare.app \
# $(OBJDIR)/minIP.app \
# $(OBJDIR)/cube3d.app \
# $(OBJDIR)/color-plasma.app \
# $(OBJDIR)/3d-model-loader.app

# Assembler apps
$(OBJDIR)/hello.app: objdir $(SRCDIR)/hello.asm $(SRCDIR)/libBareMetal.asm
	$(NASM) $(SRCDIR)/hello.asm -o $(OBJDIR)/hello.app -l $(OBJDIR)/hello-debug.txt -I $(SRCDIR)

$(OBJDIR)/sysinfo.app: objdir $(SRCDIR)/sysinfo.asm $(SRCDIR)/libBareMetal.asm
	$(NASM) $(SRCDIR)/sysinfo.asm -o $(OBJDIR)/sysinfo.app -l $(OBJDIR)/sysinfo-debug.txt -I $(SRCDIR)

$(OBJDIR)/euler1.app: objdir $(SRCDIR)/euler1.asm $(SRCDIR)/libBareMetal.asm
	$(NASM) $(SRCDIR)/euler1.asm -o $(OBJDIR)/euler1.app -l $(OBJDIR)/euler1-debug.txt -I $(SRCDIR)

$(OBJDIR)/ethtest.app: objdir $(SRCDIR)/ethtest.asm $(SRCDIR)/libBareMetal.asm
	$(NASM) $(SRCDIR)/ethtest.asm -o $(OBJDIR)/ethtest.app -l $(OBJDIR)/ethtest-debug.txt -I $(SRCDIR)

$(OBJDIR)/smptest.app: objdir $(SRCDIR)/smptest.asm $(SRCDIR)/libBareMetal.asm
	$(NASM) $(SRCDIR)/smptest.asm -o $(OBJDIR)/smptest.app -l $(OBJDIR)/smptest-debug.txt -I $(SRCDIR)

$(OBJDIR)/systest.app: objdir $(SRCDIR)/systest.asm $(SRCDIR)/libBareMetal.asm
	$(NASM) $(SRCDIR)/systest.asm -o $(OBJDIR)/systest.app -l $(OBJDIR)/systest-debug.txt -I $(SRCDIR)

$(OBJDIR)/uitest.app: objdir $(SRCDIR)/uitest.asm $(SRCDIR)/libBareMetal.asm
	$(NASM) $(SRCDIR)/uitest.asm -o $(OBJDIR)/uitest.app -l $(OBJDIR)/uitest-debug.txt -I $(SRCDIR)

$(OBJDIR)/mouse.app: objdir $(SRCDIR)/mouse.asm $(SRCDIR)/libBareMetal.asm
	$(NASM) $(SRCDIR)/mouse.asm -o $(OBJDIR)/mouse.app -l $(OBJDIR)/mouse-debug.txt -I $(SRCDIR)

# C apps
$(OBJDIR)/crt0.o: objdir $(SRCDIR)/crt0.c
	$(CC) $(CFLAGS) -o $(OBJDIR)/crt0.o $(SRCDIR)/crt0.c

$(OBJDIR)/libBareMetal.o: objdir $(SRCDIR)/libBareMetal.c
	$(CC) $(CFLAGS) -o $(OBJDIR)/libBareMetal.o $(SRCDIR)/libBareMetal.c

$(OBJDIR)/helloc.app: objdir $(SRCDIR)/helloc.c
	$(CC) $(CFLAGS) -o $(OBJDIR)/helloc.o $(SRCDIR)/helloc.c
	$(LD) $(LDFLAGS) -T $(SRCDIR)/c.ld -o $(OBJDIR)/helloc.app $(OBJDIR)/crt0.o $(OBJDIR)/libBareMetal.o $(OBJDIR)/helloc.o

$(OBJDIR)/uitestc.app: objdir $(SRCDIR)/uitestc.c
	$(CC) $(CFLAGS) -o $(OBJDIR)/uitestc.o $(SRCDIR)/uitestc.c
	$(LD) $(LDFLAGS) -T $(SRCDIR)/c.ld -o $(OBJDIR)/uitestc.app $(OBJDIR)/crt0.o $(OBJDIR)/libBareMetal.o $(OBJDIR)/uitestc.o

$(OBJDIR)/raytrace.app: objdir $(SRCDIR)/raytrace.c
	$(CC) $(CFLAGS) -o $(OBJDIR)/raytrace.o $(SRCDIR)/raytrace.c
	$(LD) $(LDFLAGS) -T $(SRCDIR)/c.ld -o $(OBJDIR)/raytrace.app $(OBJDIR)/crt0.o $(OBJDIR)/libBareMetal.o $(OBJDIR)/raytrace.o

$(OBJDIR)/gavare.app: objdir $(SRCDIR)/gavare.c
	$(CC) $(CFLAGS) -o $(OBJDIR)/gavare.o $(SRCDIR)/gavare.c
	$(LD) $(LDFLAGS) -T $(SRCDIR)/c.ld -o $(OBJDIR)/gavare.app $(OBJDIR)/crt0.o $(OBJDIR)/libBareMetal.o $(OBJDIR)/gavare.o

$(OBJDIR)/minIP.app: objdir $(SRCDIR)/minIP.c
	$(CC) $(CFLAGS) -o $(OBJDIR)/minIP.o $(SRCDIR)/minIP.c
	$(LD) $(LDFLAGS) -T $(SRCDIR)/c.ld -o $(OBJDIR)/minIP.app $(OBJDIR)/crt0.o $(OBJDIR)/libBareMetal.o $(OBJDIR)/minIP.o

$(OBJDIR)/cube3d.app: objdir $(SRCDIR)/cube3d.c
	$(CC) $(CFLAGS) -o $(OBJDIR)/cube3d.o $(SRCDIR)/cube3d.c
	$(LD) $(LDFLAGS) -T $(SRCDIR)/c.ld -o $(OBJDIR)/cube3d.app $(OBJDIR)/crt0.o $(OBJDIR)/libBareMetal.o $(OBJDIR)/cube3d.o

$(OBJDIR)/color-plasma.app: objdir $(SRCDIR)/color-plasma.c
	$(CC) $(CFLAGS) -o $(OBJDIR)/color-plasma.o $(SRCDIR)/color-plasma.c
	$(LD) $(LDFLAGS) -T $(SRCDIR)/c.ld -o $(OBJDIR)/color-plasma.app $(OBJDIR)/crt0.o $(OBJDIR)/libBareMetal.o $(OBJDIR)/color-plasma.o

$(OBJDIR)/3d-model-loader.app: objdir $(SRCDIR)/3d-model-loader/3d-model-loader.c
	$(CC) $(CFLAGS) -o $(OBJDIR)/3d-model-loader.o $(SRCDIR)/3d-model-loader.c
	$(LD) $(LDFLAGS) -T $(SRCDIR)/c.ld -o $(OBJDIR)/color-plasma.app $(OBJDIR)/crt0.o $(OBJDIR)/libBareMetal.o $(OBJDIR)/3d-model-loader.o
 
$(SRCDIR)/libBareMetal.asm:
	curl -s -o $(SRCDIR)/libBareMetal.asm https://raw.githubusercontent.com/ReturnInfinity/BareMetal/master/api/libBareMetal.asm

$(SRCDIR)/libBareMetal.c:
	curl -s -o $(SRCDIR)/libBareMetal.c https://raw.githubusercontent.com/ReturnInfinity/BareMetal/master/api/libBareMetal.c
	curl -s -o $(SRCDIR)/libBareMetal.h https://raw.githubusercontent.com/ReturnInfinity/BareMetal/master/api/libBareMetal.h

clean:
	rm -rf $(OBJDIR)
	rm -f $(SRCDIR)/libBareMetal.h
	rm -f $(SRCDIR)/libBareMetal.c
	rm -f $(SRCDIR)/libBareMetal.asm
	

objdir:
	mkdir -p $(OBJDIR)


