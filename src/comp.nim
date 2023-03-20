import genasm
import tables

type 
  TkTyp {.pure.} = enum
    Add, Sub, Left, Right, InB, OutB, LoopStart, LoopEnd, Comment
  Token = object
    typ: TkTyp

proc genToken(c: char): Token =
  return case c
    of '+': Token(typ: TkTyp.Add)
    of '-': Token(typ: TkTyp.Sub)
    of '<': Token(typ: TkTyp.Left)
    of '>': Token(typ: TkTyp.Right)
    of '.': Token(typ: TkTyp.OutB)
    of ',': Token(typ: TkTyp.InB)
    of '[': Token(typ: TkTyp.LoopStart)
    of ']': Token(typ: TkTyp.LoopEnd)
    else: Token(typ: TkTyp.Comment)

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

proc lexFile(file: string): seq[Token] =
  var chr: int

  while chr < file.len:
    result.add(genToken(file[chr]))
    inc chr

proc compileProgram*(file: string): string =
  let prog = readFile(file)

  let toks = lexFile(prog)

  var 
    loopCount = -1
    currentLoop = -1

  result.add header()

  for tok in toks:
    case tok.typ:
      of TkTyp.Add:
        result.add op_add()
      of TkTyp.Sub:
        result.add op_sub()
      of TkTyp.Right:
        result.add op_inc()
      of TkTyp.Left:
        result.add op_dec()
      of TkTyp.OutB:
        result.add op_outb()
      of TkTyp.LoopStart:
        inc loopCount
        inc currentLoop
        result.add op_loopStart(loopCount)
      of TkTyp.LoopEnd:
        result.add op_loopEnd(currentLoop)
        dec currentLoop
      else: discard

  result.add footer()
