prompt :: String
prompt = "Type in your string > "

main :: IO ()
main = untilAnswer

untilAnswer :: IO ()
untilAnswer = do
  putStr prompt
  str <- getLine
  case str of
    "" -> untilAnswer
    _ -> putStrLn $ strLenPrompt str
  untilAnswer

strLenPrompt :: String -> String
strLenPrompt str = str ++ " Has " ++ strLength ++ " characters"
  where
    strLength = show (length str)