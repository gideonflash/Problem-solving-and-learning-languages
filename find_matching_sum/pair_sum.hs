pairSum :: Integer -> [Integer] -> Maybe [Integer]
pairSum _ [] = Nothing
pairSum num (x : xs) =
  case pairTest x num xs of
    Nothing -> pairSum num xs
    Just (n1, n2) -> Just [n1, n2]

pairTest :: Integer -> Integer -> [Integer] -> Maybe (Integer, Integer)
pairTest _ _ [] = Nothing
pairTest curr target (x : xs) =
  case x + curr == target of
    False -> pairTest curr target xs
    True -> Just (curr, x)
