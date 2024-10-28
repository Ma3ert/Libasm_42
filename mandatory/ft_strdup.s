SECTION .text
extern malloc
extern ft_write
extern ft_strlen
extern ft_strcpy
global ft_strdup

ft_strdup:
    push rdi
    call ft_strlen
    add rax, 1
    mov rdi, rax            ; here I put the number of bytes to allocate
    call malloc wrt ..plt   ; here is simply the call
    cmp rax, 0              ; test if rax is zero
    je malloc_end           ; if so jump to exit the program
    pop rsi
    mov rdi, rax            ; put the return value at rdi first param

    call ft_strcpy 
    ret
malloc_end:
    ret
