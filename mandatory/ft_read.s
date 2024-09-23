SECTION .text
extern ___errno
global ft_read

ft_read:
    ; Parameters are already in rdi, rsi, rdx
    mov rax, 0           ; syscall number for sys_read
    syscall              ; make the syscall
    cmp rax, 0
    jl ft_read_error
    ret                  ; return to caller
 
ft_read_error:
    neg rax         ; negate rax to get the positive value
    push rax        ; push the rax (error code from syscall) into the stack to access it later
    call ___errno_location   ; call __error to get the errno location 
    pop rdx         ; restore the error code from the stack into rdx
    mov [rax], rdx  ; put the value that on rdx at the address that __error returned in rax
    ret
    ; STILL NEED TO WORK ON THE ERROR
