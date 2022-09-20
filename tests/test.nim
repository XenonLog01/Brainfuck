import os

proc exec(cmd: string) =
  discard execShellCmd(cmd)

const
  TEXT_CYAN  = "\e[36m"
  TEXT_RESET = "\e[0m"

echo TEXT_CYAN & " => Compiling Program: " & TEXT_RESET
exec "nimble build" # Build the compiler/interpreter.

echo TEXT_CYAN & " => Running Tests: " & TEXT_RESET
block:
  echo TEXT_CYAN & "  => Test :: HELLO WORLD: " & TEXT_RESET
  exec "cd bin && bf.exe ../tests/hello.bf"

  echo TEXT_CYAN & "  => Test :: Hello World(Compact): " & TEXT_RESET
  exec "cd bin && bf.exe ../tests/hello-compact.bf"
