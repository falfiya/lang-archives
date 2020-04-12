import rdstdin

while true:
   let letter = readLineFromStdin "What's your favorite letter?\n> "
   if letter.len > 1:
      echo letter & " is my favorite letter!"
      break
   else:
      echo "Your letter is too short. Try again"
