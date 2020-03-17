package main

import "core:fmt"
import "core:os"
import "core:strings"
import "core:strconv"

// color string
c :: proc(code: int) -> string {
   return fmt.aprint("\033[", code, "m");
}

when os.OS == "linux" || os.OS == "darwin" {
   reset  := c(0);
   red    := c(31);
   cyan   := c(36);
   grey   := c(90);
   lred   := c(91);
   orange := c(33);
   purple := c(35);
} else {
   reset  :: "";
   red    :: "";
   cyan   :: "";
   grey   :: "";
   lred   :: "";
   orange :: "";
   purple :: "";
}

clear :: proc() {
   fmt.print("\033[3J\033[H\033[2J");
}

format_int :: proc(i: i64) -> string {
   if i == 1 {
      return "";
   } else {
      return fmt.aprint(purple, i);
   }
}

printeq :: proc(a, b, c: string) {
   fmt.print(
      a, grey, "x", orange, "² ", // ax²
      red, "+ ",                  // +
      b, grey, "x ",              // bx
      red, "+ ",                  // +
      c,                          // c
      red, " = ",                 // =
      purple, '0', '\n',          // 0
      reset
   );
}


placeholder :: proc(c: string) -> string {
   return fmt.aprint(cyan, c);
}

ph_a := placeholder("a"); // I've honestly got no idea
ph_b := placeholder("b"); // why these aren't working.
ph_c := placeholder("c"); // I think it's Odin's fault

read_int :: proc() -> i64 {
   out := make([]byte, 10);
   os.read(os.stdin, out);
   return strconv.parse_i64(transmute(string) out);
}

varprompt :: proc(v: string) {
   fmt.printf("%s%s = %s", v, red, purple);
}

main :: proc() {
   a, b, c: string;
   clear();
   printeq(ph_a, ph_b, ph_c);
   varprompt(ph_a);
   a = format_int(read_int());
   clear();
   printeq(a, ph_b, ph_c);
   varprompt(ph_b);
   b = format_int(read_int());
   clear();
   printeq(a, b, ph_c);
   varprompt(ph_c);
   c = format_int(read_int());
   clear();
   printeq(a, b, c);
}
