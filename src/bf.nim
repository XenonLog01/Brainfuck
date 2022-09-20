import tables, os

proc genLoops(file: string): Table[int, int] =
  var
    loopStack: seq[int]
    loopTable = initTable[int, int]()
    idx = 0
    chr: char

  while idx < file.len:
    chr = file[idx]
    if chr == '[':
      loopStack.add(idx)
    elif chr == ']':
      let startIdx = loopStack.pop()
      loopTable[startIdx] = idx
      loopTable[idx] = startIdx
    idx += 1

  return loopTable

proc runFile(file: string) =
  let loops = genLoops(file)
  var 
    opPtr: int
    op: char
    tape: array[256, int]
    tapePtr: int = 0

  while opPtr < file.len:
    op = file[opPtr]

    case op:
      of '+':
        tape[tapePtr] += 1
        if tape[tapePtr] == 255: # Essentially turns the tape into a list of wrapping uint8_t's
          tape[tapePtr] = 0
      of '-':
        tape[tapePtr] -= 1
        if tape[tapePtr] < 0:   # Essentially turns the tape into a list of wrapping uint8_t's
          tape[tapePtr] = 255
      of '>':
        tapePtr += 1
        if tapePtr == tape.len:
          tapePtr = 0
      of '<':
        tapePtr -= 1
        if tapePtr < 0:
          tapePtr = tape.len - 1
      of '.':
        write(stdout, tape[tapePtr].char)
      of ',':
        tape[tapePtr] = readLine(stdin)[0].int
      of '[':
        if tape[tapePtr] == 0:
          opPtr = loops[opPtr]
      of ']':
        if tape[tapePtr] != 0:
          opPtr = loops[opPtr]
      else:
        discard

    opPtr += 1

proc main() =
  let args = commandLineParams()
  runFile(readFile(args[0]))

when isMainModule:
  main()
