cycleCount :: Int -> Int -> Int
cycleCount count n
  | n == 1 = incrment count
  | mod n 2 == 0 = cycleCount (incrment count) (div n 2)
  | otherwise = cycleCount (incrment count) (n * 3 + 1)
  where
    incrment x = x + 1

cyclesFromList :: [Int] -> [Int]
cyclesFromList = map (cycleCount 0)

findMax' :: [Int] -> Int
findMax' = foldr incrmnt 0

incrmnt :: Int -> Int -> Int
incrmnt curr acc
  | curr > acc = curr
  | otherwise = acc

max3nPlus1 :: [Int] -> Int
max3nPlus1 = findMax' . cyclesFromList