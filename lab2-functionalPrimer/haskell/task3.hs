sgn :: Int -> Int
sgn x = if x < 0 
          then -1 
          else if x == 0 
              then 0 
              else 1

sgnGuards :: Int -> Int
sgnGuards x | x < 0 = -1
            | x == 0 = 0
            | otherwise = 1

main :: IO ()
main = do
    putStrLn "Please enter a number"
    input <- getLine 
    let x = (read input :: Int)
    putStrLn( show (sgnGuards (x)) )
