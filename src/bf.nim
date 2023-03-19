import os, interpreter, comp

proc main() =
  let args = commandLineParams()
  # interpretFile(args[0])

  let assembly =  compileProgram(args[0])
  writeFile("bin/out.asm", assembly)

when isMainModule:
  main()
