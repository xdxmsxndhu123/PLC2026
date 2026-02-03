-- Define applicatorFunc: takes a list of Ints and a Char ('s' or 'a')
applicatorFunc :: [Int] -> Char -> Double
applicatorFunc inp choice
    | choice == 's' = total
    | choice == 'a' = total / count
    | otherwise     = error "Invalid choice! Use 's' for sum or 'a' for average."
  where
    total = fromIntegral (sum inp)   -- convert Int to Double for division
    count = fromIntegral (length inp)

main :: IO ()
main = do
    putStrLn "Enter start of range (a):"
    aStr <- getLine
    putStrLn "Enter end of range (b):"
    bStr <- getLine
    putStrLn "Enter 's' for sum or 'a' for average:"
    choiceStr <- getLine

    -- Convert inputs to proper types
    let a = read aStr :: Int
        b = read bStr :: Int
        choice = if null choiceStr then 's' else head choiceStr
        inpList = [a..b]

    -- Call applicatorFunc
    let result = applicatorFunc inpList choice

    -- Output result
    case choice of
        's' -> putStrLn ("Sum = " ++ show result)
        'a' -> putStrLn ("Average = " ++ show result)
        _   -> putStrLn "Invalid choice entered."