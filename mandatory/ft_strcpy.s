SECTION .text
global ft_strcpy

ft_strcpy:
    mov rax, rdi ; here I save the address of the dest to return it
ft_strcpy_loop:
    mov bl, [rsi]   ; put the value at rdi in bl, we used bl because
                    ; it is a 8 bit register. that help with dealing with bytes
    mov [rdi], bl   ; copy the value in bl to dest
    cmp bl, 0       ; check if we reach the null termination
    je ft_strcpy_end
    inc rdi         ; boring inc
    inc rsi
    jmp ft_strcpy_loop

ft_strcpy_end:
    ret
