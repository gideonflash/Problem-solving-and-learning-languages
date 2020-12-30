type SubSeq = [Integer]

hasSubSequence :: [Integer] -> SubSeq -> Bool
hasSubSequence xs seqToMatch = snd $ foldl subSeq (seqToMatch, False) xs

subSeq :: ([Integer], Bool) -> Integer -> ([Integer], Bool)
subSeq ([], _) _ = ([], True)
subSeq (sq@(y : ys), _) x =
  case x == y of
    True -> (ys, False)
    False -> (sq, False)

lst :: [Integer]
lst = [5, 1, 22, 25, 6, -1, 10, 8]

subSequence :: [Integer]
subSequence = [1, 6, -1, 10]

-- test cases
-- smaller sub sequence list
-- bigger sub sequence list
-- smaller list
-- bigger list