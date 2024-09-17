SECTION .text
global ft_strlen

ft_strlen:
    push rbp        ; set the base pointer
    mov  rbp, rsp
    mov rax, 0      ; initialize rax to 0

ft_strlen_loop:
    mov cl, [rdi]       ; put the value at rdi in cl, we used cl because
                        ; it is a 8 bit register. that help with dealing with bytes
    cmp cl, 0           ; check if we reach the null char
    je ft_strlen_end
    inc rax             ; increment the length
    inc rdi             ; jump to the next char
    jmp ft_strlen_loop

ft_strlen_end:
    mov rsp, rbp
    pop rbp
    ret
