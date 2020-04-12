import rdstdin
import strutils

while true:
   let input = readLineFromStdin("> ")
   case input
   of "q", "Q", "quit", "Quit", "exit", "Exit":
      break
   else:
      echo("< " & input.toLowerAscii.replace("_", ""))
