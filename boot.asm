mov ah, 0x0e
mov al, 'A'
caploop:
    cmp al,'Z'+1
    je quit
    int 0x10
    add al,33
    jmp lowloop

lowloop:
    cmp al,'z'+1
    je quit
    int 0x10
    sub al,31
    jmp caploop
    
quit:
    jmp $
times 510-($-$$) db 0
db 0x55, 0xaa
