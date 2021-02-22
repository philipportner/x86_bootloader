bits 16 ; tell NASM this is 16bit code
org 0x7c00 ; tell NASM to start outputting stuff at 0x7c00

boot:
    mov si,hello ; point si register to hello label
    mov ah,0x0e ; 0x0e means 'write char in TTY mode'

.loop:
    lodsb
    or al,al ; is al == 0 ?
    jz halt ; if al == 0 jmp to halt
    int 0x10 ; runs BIOS interrupt 0x10 - video services
    jmp .loop

halt:
    cli ; clear interrupt flag
    hlt ; halt execution

hello:
    db "Hello world!",0

times 510 - ($-$$) db 0 ; pad remaining 510 bytes with zeroes
dw 0xaa55 ; bootload magic - marks this 512 byte sector bootable
