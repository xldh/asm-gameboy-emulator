; MEMORY MANAGEMENT UNIT

; READ BYTE AT [EDI]
; rdi (clamped to edi here) holds the address to read byte from
rb:
    mov     al, BYTE [memory_map + edi]
    ret

; READ WORD ad [EDI]
; rdi (clamped to edi here too) holds the address to read word from
rw:
    mov     ax, WORD [memory_map + edi]
    ret
