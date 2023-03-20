extern _putchar

section .data
t:  times 2 db 0
a:  db 0

section .text
global _main
_main:
  inc byte [a]
  movzx edi, byte [a]
  add byte [edi + t], 42
  movzx eax, byte [edi + t]
  push eax
  call _putchar
  xor eax, eax
  ret

