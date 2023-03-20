import std/strformat

proc header*(): string =
  """
extern _putchar
extern _ExitProcess@4

section .data
tape:   times 256 db 0
tptr:   db 0

section .text
global  _main
_main:
  """

proc footer*(): string =
  """
  push 0
    call _ExitProcess@4
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
  fmt"""
loop{loopNo}:
  """

proc op_loopEnd*(loopNo: int): string =
  return fmt"""
  movzx edi, byte [tptr]
    cmp byte [edi + tape], 0
    jz loop{loopNo}
  """
