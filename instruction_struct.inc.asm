struc instruction   ; Instruction instance is 32 bits

    .info:           resb 8     ; bytecode, 
    .size:           resd 1
    .ascii:          resb 16
    .function_ptr:   resd 1     ; size of an address is 8 octets (64 bits)

endstruc
