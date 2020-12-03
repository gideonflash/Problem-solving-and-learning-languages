main :: IO ()
main = do
  putStr quotePrompt
  quote <- getLine
  putStr authorPrompt
  author <- getLine
  putStrLn $ toQuote author quote

type Saying = String

type Author = String

type Quote = String

quotePrompt :: String
quotePrompt = "What is the quote? "

authorPrompt :: String
authorPrompt = "Who said it? "

toQuote :: Author -> Saying -> String
toQuote author saying = author ++ " says, " ++ "\"" ++ saying ++ "\""

-- Can you return from a do sequence
-- How do you go about validating use input, like take this check it then go to the next check it and so on and so on