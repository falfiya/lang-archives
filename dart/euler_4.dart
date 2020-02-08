import "dart:math";

bool is_palindrome(int i) {
   var s = i.toString();
   return s.split('').reversed.join('') == s;
}

Iterable<int> composite_numbers(int max) sync* {
   for (int a = max; a > 0; --a) {
      for (int b = max; b > 0; --b) {
         yield a * b;
      }
   }
}

void main() {
   print(
      composite_numbers(999).where(is_palindrome).reduce(max)
   );
}
