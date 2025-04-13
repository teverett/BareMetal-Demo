

CC=x86_64-elf-gcc
LD=x86_64-elf-ld
CFLAGS=-c -m64 -nostdlib -nostartfiles -nodefaultlibs -ffreestanding -falign-functions=16 -fomit-frame-pointer -mno-red-zone -fno-builtin
LDFLAGS=
NASM=nasm

# objcopy
OBJCOPY=x86_64-elf-objcopy
OBJCOPYFLAGS=-O binary

# strip
STRIP=x86_64-elf-strip
STRIPFLAGS=

# ar
AR=x86_64-elf-ar
ARFLAGS=-crs
