    memory_map resb 0x10000         ; memory from 0x0 to 0xFFFF

    _A  resb 1                      ; 8 bit registers
    _B  resb 1
    _C  resb 1
    _D  resb 1
    _E  resb 1
    _H  resb 1
    _L  resb 1
    _F  resb 1

    _PC resw 1                      ; 16 bit registers
    _SP resw 1
