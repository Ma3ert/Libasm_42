SECTION .data
    s1 db 'Hello, World!', 0    ; Null-terminated string
    s2 db 'Hello, world!'

SECTION .text
global ft_strcmp

ft_strcmp:
    mov rax, 0      ; initialize rax to 0

ft_strcmp_loop:
    ; first param in rdi
    ; second param in rsi
    movzx ecx, byte [rdi]       ; we used eax, ecx and ebx because they're 32bit register
                         ; 32bit is a good fit to hold the negative value and for the performance
    movzx ebx, byte [rsi]       ; put the value at rsi in ebx. (^ here's the explanation)

    sub ecx, ebx
    cmp ecx, 0           ; check if al value is diff to zero if yes then we move to
    jnz ft_strcmp_end   ; the function end to return

    cmp ebx, 0           ; check if we reach the null char in the second string
    je ft_strcmp_end

    cmp ecx, 0           ; check if we reach the null char in the first string
    je ft_strcmp_end

    inc rsi             ; boring increment
    inc rdi
    jmp ft_strcmp_loop

ft_strcmp_end:
    mov eax, ecx
    ret
