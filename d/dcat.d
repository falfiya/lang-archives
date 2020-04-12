import std.file;
import std.stdio;
import std.array: split;
import std.path: baseName;

enum reset = "\033[0m";
enum cyan = "\033[96m";
enum blue = "\033[94m";

void main(string[] dirs) {
   foreach (dir; dirs[1 .. $]) {
      writefln("%s%s%s", cyan, dir, reset);
      if (dir.exists && dir.isDir) {
         auto dirents = dir.dirEntries(SpanMode.shallow, false);
         foreach (dirent; dirents) {
            writef("%s+--%s%s%s", cyan, blue, dirent.name.baseName, reset);
            if (dirent.isFile) {
               try {
                  auto text = dirent.readText;
                  writeln(":");
                  foreach (line; text.split('\n')) {
                     writefln("%s|   %s|   %s%s", cyan, blue, reset, line);
                  }
                  writefln("%s|   %s^%s", cyan, blue, reset);
               } catch (std.utf.UTFException _) {
                  write('\n');
               }
            }
         }
         writefln("%s^%s", cyan,reset);
      }
   }
}
