nop:
    istruc instruction
        at instruction.info,         db 0x00
        at instruction.size,         db 0x00
        at instruction.ascii,        db 'nop', 0
        at instruction.function_ptr, dd op_nop
    iend
