import java.io.*

fun main(args: List<String>) {
   var cwd = System.getProperty("user.dir")
   val root = args.getOrElse(0) { "." } + cwd
   println("Searching for .class files in $root")

   val classFiles = File(root)
      .walk()
      .filter { it.isFile }
      .map { it.getName() }
      .filter { it.endsWith(".class") }
      .toList()

   classFiles.forEachIndexed(fun(f, i) {
      print(i.padStart(2) + ": $f")
   })
}
