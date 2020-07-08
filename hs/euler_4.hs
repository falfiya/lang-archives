import Data.List

isPalindrome :: [Char] -> Bool
isPalindrome s = reverse s == s

q = [show $ a * b | let twodigit = [999, 998..1], a <- twodigit, b <- twodigit]

main = do
   let m = find (isPalindrome . show) q
   case m of
      Nothing -> putStrLn "Couldn't find anything"
      Just s -> putStrLn s
