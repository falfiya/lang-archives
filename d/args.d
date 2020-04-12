import std.stdio;

void main(string[] argv) {
   writefln("argc: %d", argv.length);
   foreach(i, arg; argv) {
      writefln("argv[%d] = %s", i, arg);
   }
}
