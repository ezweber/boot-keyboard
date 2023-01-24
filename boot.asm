[org 0x7c00]

print:
    mov ah, 0
    int 0x16
    cmp al, '-'
    je goodbye
    mov ah, 0x0e
    int 0x10
    jmp print

goodbye:
    mov ah, 0x0e
    mov bx, goodbye_var
    printString:
        mov al, [bx]
        cmp al, 0
        je exit
        int 0x10
        inc bx
        jmp printString

exit:
    jmp $

goodbye_var:
    db 0x0a, "Goodbye!", 0

times 510-($-$$) db 0
dw 0xaa55