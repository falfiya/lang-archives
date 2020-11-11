fun main(args: Array<String>) {
   val max = args.getOrNull(0)?.toIntOrNull()
   if (max == null) {
      println("You must provide a positive integer value for the max of FizzBuzz")
      return
   }

   for (i in 0..max) {
      val out = when {
         i % 15 == 0 -> "fizzbuzz"
         i % 3  == 0 -> "fizz"
         i % 5  == 0 -> "buzz"
         else -> i
      }
      println(out)
   }
}
