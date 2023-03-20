extern _putchar
extern _ExitProcess@4
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
  loop0:
  movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
    add byte [tptr], 1
  loop1:
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
    test eax, eax
    jnz loop1
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
  loop2:
  movzx eax, byte [tptr]
    sub eax, 1
    mov byte [tptr], al
      movzx eax, byte [tptr]
    test eax, eax
    jnz loop2
  movzx eax, byte [tptr]
    sub eax, 1
    mov byte [tptr], al
    sub byte [tptr], 1
      movzx eax, byte [tptr]
    test eax, eax
    jnz loop2
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
    push 52
    call _ExitProcess@4
  