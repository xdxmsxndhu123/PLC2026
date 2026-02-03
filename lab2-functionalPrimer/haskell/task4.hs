ask :: String -> String -> IO ()
ask basePrompt currentPrompt =
 do
 putStrLn currentPrompt
 line <- getLine
 if line == ""
  then ask basePrompt (currentPrompt ++ "!")
    else if (line == "quit") 
      then putStrLn("quitting..") --condition added for quitting
  else do
    putStrLn ("you said: " ++ reverse line)
    ask basePrompt basePrompt --needed for repeated inputs
 
main :: IO ()
main =
 do
 let prompt = "please say something"
 ask prompt prompt