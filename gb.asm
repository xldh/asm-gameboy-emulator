global _start

; structs includes
%include "instruction.struct.asm"

section .bss
    %include "cpu/states.bss.asm"

section .data
    %include "cpu/instruction_set.data.asm"

section .text

    _start:
        %include "memory_fill.inc.asm"

        ; tests read byte
        test_mmu_rb:
            mov di, 0xFFFF ; address to read from for rb
            call rb

        ; tests read word
        test_mmu_rw:
            mov di, 0xFFFE ; address to read from for rb
            call rw

    exit:
        mov rdi, 0
        mov rax, 3ch
        syscall

; function includes
%include "cpu/operations.func.asm"
%include "mmu.func.asm"
