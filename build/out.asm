extern _putchar
section .data
tape:   times 256 db 0
tptr:   db 0

section .text
global  _main
_main:
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
  loop0:
    inc byte [tptr]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
  loop1:
    inc byte [tptr]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    inc byte [tptr]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    inc byte [tptr]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    inc byte [tptr]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    dec byte [tptr]
    dec byte [tptr]
    dec byte [tptr]
    dec byte [tptr]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
  movzx edi, byte [tptr]
  cmp byte [edi + tape], 0
  jz loop1
  inc byte [tptr]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    inc byte [tptr]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    inc byte [tptr]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    inc byte [tptr]
    inc byte [tptr]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
  loop2:
    dec byte [tptr]
  movzx edi, byte [tptr]
  cmp byte [edi + tape], 0
  jz loop2
  dec byte [tptr]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
  movzx edi, byte [tptr]
  cmp byte [edi + tape], 0
  jz loop2
  inc byte [tptr]
    inc byte [tptr]
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    inc byte [tptr]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    inc byte [tptr]
    inc byte [tptr]
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    dec byte [tptr]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    dec byte [tptr]
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    dec byte [edi + tape]
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    inc byte [tptr]
    inc byte [tptr]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    inc byte [tptr]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    inc byte [edi + tape]
    movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
    push 0x10
    call _putchar
    xor eax, eax
    ret
  