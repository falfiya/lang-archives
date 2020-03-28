import Pkg; Pkg.add("Crayons")

using Crayons
using Crayons.Box

function clear()
   run(`cmd /C cls`)
end

function prompt(v::String)
   print("$CYAN_FG$v$RED_FG = $LIGHT_RED_FG")
   out = "$MAGENTA_FG$(parse(Int, readline(keep = false)))"
   return out
end

function printeq(a::String, b::String, c::String)
   clear()
   println(
      "$a$(DARK_GRAY_FG)x$(YELLOW_FG)² $RED_FG+ ",
      "$b$(DARK_GRAY_FG)x $RED_FG+ ",
      "$c $RED_FG= $(MAGENTA_FG)0",
      Crayon(reset = true)
   )
end

_b = "$(CYAN_FG)b"
_c = "$(CYAN_FG)c"
printeq("$(CYAN_FG)a", _b, _c)
a = prompt("a")
printeq(a, _b, _c)
b = prompt("b")
printeq(a, b, _c)
c = prompt("c")
printeq(a, b, c)

print("Even odin was better than this...")
