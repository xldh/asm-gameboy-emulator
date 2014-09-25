global _start

section .bss
    %include "cpu_states.inc.asm"

section .text

    _start:
        %include "memory_fill.inc.asm"
        
        ; test
        test_mmu_rb:
            mov edi, 0xFFFF ; address to read from for rb
            call rb
    exit:
        mov rdi, 1
        mov rax, 3ch
        syscall

; function includes
%include "mmu.inc.asm"

