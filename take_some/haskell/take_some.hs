takeSome :: [a] -> Int -> [a]
takeSome list numberOfItems
  | numberOfItems > (length list) = []
  | otherwise = take numberOfItems list

takeSome' :: [a] -> Int -> [a]
takeSome' list numberOfItems = take numberOfItems (cycle list)