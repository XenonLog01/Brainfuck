extern _putchar

section .data
a:  db 'A'

section .text
global _main
_main:
l:
  push a
  call _putchar
  sub byte [a], 1
  movzx  eax, byte [a]
  test eax, eax
  jnz l
  xor eax, eax
  ret
