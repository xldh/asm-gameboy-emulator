; MEMORY MANAGEMENT UNIT

; READ BYTE AT [EDI]
; rdi (clamped to edi here) holds the address to read byte from
rb:
    push    rbp
    mov     rbp, rsp

    ; ENTRY POINT
    mov     al, BYTE [memory_map + edi]

    ; LEAVE
    mov     rsp, rbp
    pop     rbp
    ret

; READ WORD ad [EDI]
; rdi (clamped to edi here too) holds the address to read word from
rw:
    push    rbp
    mov     rbp, rsp
    ; ENTER

    mov     ax, WORD [memory_map + edi]

    ; LEAVE
    mov     rsp, rbp
    pop     rbp
    ret
