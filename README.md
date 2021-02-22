## A very simple x86_64 bootloader 

## Requirements
Ubuntu:
```
sudo apt-get install nasm qemu gcc-multilib
```

## Compilation
```
nasm -f bin boot.asm -o boot.bin
gcc -m32 kmain.cpp boot.o -o kernel.bin -nostdlib -ffreestanding -std=c++11 -mno-red-zone -fno-exceptions -nostdlib -fno-rtti -Wall -Wextra -fno-pie -Werror -T linker.ld
```
## QEMU
```
qemu-system-x86_64 -fda kernel.bin
```

## Resources
[3zanders](http://3zanders.co.uk/2017/10/13/writing-a-bootloader/).

