## A very simple x86_64 bootloader 

## Requirements
Ubuntu:
```
sudo apt-get install nasm qemu
```

## Compilation
```
nasm -f bin boot.asm -o boot.bin
```
## QEMU
```
qemu-system-x86_64 -fda boot.bin
```

## Resources
[3zanders](http://3zanders.co.uk/2017/10/13/writing-a-bootloader/).

