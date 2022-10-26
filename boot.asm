[org 0x7c00]
mov ah, 0x0e
mov bx, variableName
call ReadDisk

mov [BOOT_DISK], dl

%include "print.asm"
%include "DiskRead.asm"

jmp $

times 510-($-$$) db 0
dw 0xaa55