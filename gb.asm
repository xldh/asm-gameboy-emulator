global _start

section .bss
    %include "cpu/states.inc.asm"

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
        mov rdi, 1
        mov rax, 3ch
        syscall

; function includes
%include "mmu.inc.asm"
