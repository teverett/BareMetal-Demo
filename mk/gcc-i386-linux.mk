
CC=gcc
LD=ld
CFLAGS="-c -m64 -nostdlib -nostartfiles -nodefaultlibs -ffreestanding -falign-functions=16 -fomit-frame-pointer -mno-red-zone -fno-builtin"
LDFLAGS=
NASM=nasm

# objcopy
OBJCOPY=objcopy
OBJCOPYFLAGS=-O binary

# strip
STRIP=strip
STRIPFLAGS=


# ar
AR=ar
ARFLAGS=-crs
