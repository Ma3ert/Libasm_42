SECTION .text
extern ___errno_location
global ft_write

ft_write:
    ; Parameters are already in rdi, rsi, rdx
    mov rax, 1           ; syscall number for sys_write
    syscall              ; make the syscall
    cmp rax, 0
    jl ft_write_error
    ret                  ; return to caller

ft_write_error:
    neg rax         ; negate rax to get the positive value
    push rax        ; push the rax (error code from syscall) into the stack to access it later
    call ___errno_location   ; call __error to get the errno location 
    pop rdx         ; restore the error code from the stack into rdx
    mov [rax], rdx  ; put the value that on rdx at the address that __error returned in rax
    ret
    ; STILL NEED TO WORK ON THE ERROR