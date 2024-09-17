SECTION .text
global ft_read

ft_read:
    ; Parameters are already in rdi, rsi, rdx
    mov rax, 0           ; syscall number for sys_read
    syscall              ; make the syscall
    ret                  ; return to caller
    ; STILL NEED TO WORK ON THE ERROR
handle_error:
    mov rax, 60       ; Syscall for exit
    mov rdi, 1        ; Exit status 1 for the error
    syscall           ; Invoke syscall
