extern _putchar
section .data
tape:   times 256 db 0
tptr:   db 1

section .text
global  _main
_main:
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    add byte [tptr], 1
    add byte [tptr], 1
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    add byte [tptr], 1
    movzx eax, byte [tptr]
    sub eax, 1
    mov byte [tptr], al
    movzx eax, byte [tptr]
    sub eax, 1
    mov byte [tptr], al
    movzx eax, byte [tptr]
    sub eax, 1
    mov byte [tptr], al
    movzx eax, byte [tptr]
    sub eax, 1
    mov byte [tptr], al
    sub byte [tptr], 1
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    add byte [tptr], 1
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    add byte [tptr], 1
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    sub byte [tptr], 1
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    add byte [tptr], 1
    movzx eax, byte [tptr]
    sub eax, 1
    mov byte [tptr], al
    movzx eax, byte [tptr]
    sub eax, 1
    mov byte [tptr], al
    sub byte [tptr], 1
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    movzx eax, byte [tptr]
    push eax
    call _putchar
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    sub byte [tptr], 1
    sub byte [tptr], 1
    sub byte [tptr], 1
    movzx eax, byte [tptr]
    push eax
    call _putchar
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    movzx eax, byte [tptr]
    push eax
    call _putchar
    movzx eax, byte [tptr]
    push eax
    call _putchar
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    movzx eax, byte [tptr]
    push eax
    call _putchar
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    movzx eax, byte [tptr]
    push eax
    call _putchar
    movzx eax, byte [tptr]
    sub eax, 1
    mov byte [tptr], al
    sub byte [tptr], 1
    movzx eax, byte [tptr]
    push eax
    call _putchar
    movzx eax, byte [tptr]
    sub eax, 1
    mov byte [tptr], al
    movzx eax, byte [tptr]
    push eax
    call _putchar
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    movzx eax, byte [tptr]
    push eax
    call _putchar
    sub byte [tptr], 1
    sub byte [tptr], 1
    sub byte [tptr], 1
    sub byte [tptr], 1
    sub byte [tptr], 1
    sub byte [tptr], 1
    movzx eax, byte [tptr]
    push eax
    call _putchar
    sub byte [tptr], 1
    sub byte [tptr], 1
    sub byte [tptr], 1
    sub byte [tptr], 1
    sub byte [tptr], 1
    sub byte [tptr], 1
    sub byte [tptr], 1
    sub byte [tptr], 1
    movzx eax, byte [tptr]
    push eax
    call _putchar
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    add byte [tptr], 1
    movzx eax, byte [tptr]
    push eax
    call _putchar
    movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    add byte [tptr], 1
    add byte [tptr], 1
    movzx eax, byte [tptr]
    push eax
    call _putchar
    push 0x10
    call _putchar
    xor eax, eax
    ret
  