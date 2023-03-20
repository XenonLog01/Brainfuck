proc header*(): string =
  """
extern _putchar
extern _ExitProcess@4
section .data
tape:   times 256 db 0
tptr:   db 1

section .text
global  _main
_main:
  """

proc footer*(): string =
  """
    push 0x10
    call _putchar
    push 52
    call _ExitProcess@4
  """

proc op_outb*(): string =
  """
  movzx eax, byte [tptr]
    push eax
    call _putchar
  """

proc op_inc*(): string =
  """
  movzx eax, byte [tptr]
    add eax, 1
    mov byte [tptr], al
  """

proc op_dec*(): string =
  """
  movzx eax, byte [tptr]
    sub eax, 1
    mov byte [tptr], al
  """


proc op_add*(): string =
  """
  add byte [tptr], 1
  """

proc op_sub*(): string =
  """
  sub byte [tptr], 1
  """

proc op_loopStart*(loopNo: int): string =
  "loop" & $loopNo & ":\n"

proc op_loopEnd*(loopNo: int): string =
  return 
    "    movzx eax, byte [tptr]\n" &
    "    test eax, eax\n" &
    "    jnz loop" & $loopNo & "\n"
