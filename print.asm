printString:
    mov al, [bx]
    cmp al, 0
    je end
    int 0x10
    inc bx
    jmp printString
end:

jmp $

variableName:
    db "Booting xnel...", 0
