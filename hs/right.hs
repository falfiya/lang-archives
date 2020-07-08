import System.Environment

right :: (Ord f, Enum f, Floating f) => f -> [(f, f, f)]
right hyp = [(a, b, c) |
   let r = [1..hyp],
   a <- r, b <- r,
   let c = sqrt (a^2 + b^ 2),
   c <= hyp]

intstr :: RealFrac a => a -> String
intstr = show . floor

printTriangle (a, b, c) = putStrLn $ intstr a ++ ", " ++ intstr b ++ ", " ++ show c

main = do
   args <- getArgs
   mapM_ printTriangle $ right $ read $ head args
