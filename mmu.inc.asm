; MEMORY MANAGEMENT UNIT

; READ BYTE AT [EDI]
rb:     ; rdi holds the address to read byte from
    ; enter 
    mov     al, BYTE [memory_map + edi]

    ; leave
    ret
