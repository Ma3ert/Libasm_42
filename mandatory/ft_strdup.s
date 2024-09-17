SECTION .data
    source db "Hello World!", 0
SECTION .text
global _start

extern malloc
_start:

    lea rsi, [source]
    call ft_strdup

    mov rsi, rax
    mov rax, 1
    mov rdi, 1
    mov rdx, 14
    syscall

    mov rdi, 0        ; move the return value in the rax
    mov rax, 60
    syscall

ft_strdup:
    push rbp
    mov rbp, rsp

    ; here I should allocate the space for the destination
    mov rdi, 14; here I put the number of byte to allocate
    call malloc; here is simply the call
    cmp rax, 0; test if rax is zero
    je malloc_failed; if so jump to exit the program
    lea rdi, [rax]; put the address of the return value at rdi
                  ; to use it at the loop
ft_strdup_loop:
    mov al, [rsi]
    mov [rdi], al

    cmp al, 0
    je ft_strdup_end
    inc rdi
    inc rsi
    jmp ft_strdup_loop

ft_strdup_end:
    mov rsp, rbp
    pop rbp
    ret

malloc_failed:
    mov rax, 60        ; sys_exit system call number
    mov rdi, 1         ; Exit code 1 (error)
    syscall            ; Exit