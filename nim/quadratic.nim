import colors
import terminal
import osproc
import parseutils
import math

proc C(i: int): string = "\x1b[" & $i & "m"

const colorOverride = true

when colorOverride or hostOS == "linux" or hostOS == "darwin":
   const
      reset  = C(0)
      red    = C(31)
      green  = C(92)
      cyan   = C(36)
      grey   = C(90)
      orange = C(33)
      purple = C(35)
   proc clear() = write(stdout, "\x1b[3J\x1b[H\x1b[2J")
else:
   const
      reset  = ""
      red    = ""
      green  = ""
      cyan   = ""
      grey   = ""
      orange = ""
      purple = ""
   proc clear() = discard

proc printEquation(a, b, c: string) =
   clear()
   echo(
      a, grey, "x", orange, "² ", # ax²
      red, "+ ",                  # +
      b, grey, "x ",              # bx
      red, "+ ",                  # +
      c,                          # c
      red, " = ",                 # =
      purple, '0', '\n',          # 0
      reset
   )


proc promptVar(v: string): BiggestFloat =
   write(stdout, v, red, " = ", purple)
   var output: BiggestFloat
   var needToReadVar = true
   while needToReadVar:
      needToReadVar = parseBiggestFloat(readLine(stdin), output, 0) == 0
   return output

proc format(f: float): string =
   echo f, " and ", f.floor
   if f == 1:
      return ""
   elif f == f.floor:
      return cyan & $ type[BiggestInt](f)
   else:
      return cyan & $ f

var
   str_a = green & "a"
   str_b = green & "b"
   str_c = green & "c"

var a, b, c: BiggestFloat

printEquation(str_a, str_b, str_c)
a = promptVar(str_a)
str_a = cyan & a.format

printEquation(str_a, str_b, str_c)
b = promptVar(str_b)
str_b = cyan & b.format

printEquation(str_a, str_b, str_c)
c = promptVar(str_c)
str_c = cyan & c.format

printEquation(str_a, str_b, str_c)
let discriminant = b * b - 4 * a * c
if discriminant < 0:
   echo(grey, "x", reset, " has no real solutions.")
   quit(0)

let sd = discriminant.sqrt
let a2 = 2 * a
let plus = (sd - b) / a2
if discriminant == 0:
   echo(grey, "x ", red, "= ", cyan, plus, reset)
else:
   echo(
      grey, "x ", reset, "has two solutions: ",
      purple, "{",
      cyan, plus,
      grey, ", ",
      cyan, $ ((-sd - b) / a2),
      purple, "}",
      reset
   )
