function alternate_case(c)
   global upper
   if upper
      c = uppercase(c)
      upper = false
   else
      c = lowercase(c)
      upper = true
   end
   return c
end

while true
   global upper

   print("> ")

   in = readline()

   upper = false

   println(join(map(alternate_case, split(in, "")), ""))
end
