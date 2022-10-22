[org 0x7c00]
mov ah, 0x0e
mov bx, variableName

%include "print.asm"
%include "DiskRead.asm"

times 510-($-$$) db 0
dw 0xaa55