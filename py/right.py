import math

def right(hyp):
   r = range(1, hyp)
   return [
      (a, b, int(c))
      for a in r
      for b in r
      if (c := math.sqrt(a ^ 2 + b ^ 2)) <= hyp and c.is_integer()
   ]

def printTriangle(t):
   (a, b, c) = t;
   print("%s, %s, %s"%(a, b, c))

import sys

hypInput = int(sys.argv[1])
triangles = right(hypInput)

for t in triangles:
   printTriangle(t)
