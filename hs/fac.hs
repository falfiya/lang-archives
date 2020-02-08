import System.Environment
import Data.List

factorial :: (Integer a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

main = do
   args <- getArgs
   let n = read (head args) :: Int
   print (factorial n)
