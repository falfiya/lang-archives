// by default, dmd produces 32 bit binary
// compile with -m64 to get a 64 bit binary
import std.stdio: write, writeln;

void main() {
   if (uint.max == size_t.max) {
      write("32");
   } else {
      write("64");
   }
   writeln(" bit addressing!");
}
