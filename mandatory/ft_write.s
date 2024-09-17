SECTION .text
global ft_write

ft_write:
    ; Parameters are already in rdi, rsi, rdx
    mov rax, 1           ; syscall number for sys_write
    syscall              ; make the syscall
    ret                  ; return to caller
    ; STILL NEED TO WORK ON THE ERROR