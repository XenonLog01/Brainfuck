proc header*(): string =
  """
extern _putchar
section .data
tape:   times 256 db 0
tptr:   db 0

section .text
global  _main
_main:
  """

proc footer*(): string =
  """
  push 0x10
    call _putchar
    xor eax, eax
    ret
  """

proc op_outb*(): string =
  """
  movzx edi, byte [tptr]
    movzx eax, byte [edi + tape]
    push eax
    call _putchar
  """

proc op_inc*(): string =
  """
  inc byte [tptr]
  """

proc op_dec*(): string =
  """
  dec byte [tptr]
  """


proc op_add*(): string =
  """
  movzx edi, byte [tptr]
    inc byte [edi + tape]
  """

proc op_sub*(): string =
  """
  movzx edi, byte [tptr]
    dec byte [edi + tape]
  """

proc op_loopStart*(loopNo: int): string =
  "loop" & $loopNo & ":\n  "

proc op_loopEnd*(loopNo: int): string =
  return 
    "movzx edi, byte [tptr]\n" & 
    "  cmp byte [edi + tape], 0\n" &
    "  jz loop" & $loopNo & "\n"
