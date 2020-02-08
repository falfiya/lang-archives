import System.Environment

right hyp = [(a, b, c) | let r = [1..hyp], a <- r, b <- r, let c = sqrt (a^2 + b^2), c <= hyp]

intstr i = show $ floor i
printTriangle (a, b, c) = putStrLn $ intstr a ++ ", " ++ intstr b ++ ", " ++ show c

main = do
   args <- getArgs
   mapM_ printTriangle $ right $ read $ head args
