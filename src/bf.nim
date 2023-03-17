import os, interpreter

proc main() =
  let args = commandLineParams()
  interpretFile(readFile(args[0]))

when isMainModule:
  main()
