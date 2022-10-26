
PROGRAM_SPACE equ 0x7e00

ReadDisk:
    mov ah, 0x02
    mov bx, PROGRAM_SPACE
    mov al, 4 ; have storage up to 32
    mov dl, [BOOT_DISK]
    mov ch, 0x00
    mov dh, 0x00
    mov cl, 0x02



    je DiskReadFailed

    int 0x13


    ret

BOOT_DISK:
    db 0

DiskReadErrorString:
    db "Disk Read Failed.",

DiskReadFailed:
    mov bx, DiskReadErrorString
    call printString
    ret

jmp $