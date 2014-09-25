;   _ start:
        mov al, 1
        xor ecx, ecx                        ; ecx = 0

        fill_memory_map_loop:               ; start loop to fill memory
            mov [memory_map + ecx], al
            inc ecx
            cmp ecx, 0xFFFF                 ; = 0x10000 - 1
            jbe fill_memory_map_loop
            mov [memory_map + 0xFFFF], BYTE 0xFF
