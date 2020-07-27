def isPalindrome(s):
   temp = [c for c in s]  
   temp.reverse()
   return ''.join(temp) == s

def twodigit():
   return reversed(range(100, 999))

q = reversed(sorted([a * b for a in twodigit() for b in twodigit()]))

found = False

for s in q:
   if isPalindrome(str(s)):
      print(s)
      found = True
      break

if not found:
   print("guh")
