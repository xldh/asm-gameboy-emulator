    memory_map resb 0x10000         ; memory from 0x0 to 0xFFFF

    _AF  resb 2                      ; 8 bit registers
    _BC  resb 2
    _DE  resb 2
    _HL  resb 2

    _PC resw 1                      ; 16 bit registers
    _SP resw 1
