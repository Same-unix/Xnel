printString:
    mov al, [bx]
    cmp al, 0
    je end
    inc bx
    jmp printString
end:

variableName:
    db "Booting xnel..."
