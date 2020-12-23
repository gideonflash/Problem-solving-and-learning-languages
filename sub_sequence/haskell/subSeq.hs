-- Checks if a subSequence exsists in an array
-- O(n), the last thing we are doing is calling a function, so no
-- space is used.
-- There is something interesting about how, with FP, when you define data,
-- you go through snapshots of what the data could look like through the
-- computation, without even needing to know the operation you need do.
subSeq :: [Integer] -> [Integer] -> Bool
subSeq (x : xs) subseq@(y : ys) =
  case x == y of
    True -> subSeq xs ys
    False -> subSeq xs subseq
subSeq [] [] = True
subSeq _ [] = True
subSeq [] _ = False

lst :: [Integer]
lst = [5, 1, 22, 25, 6, -1, 8, 10]

subSequence :: [Integer]
subSequence = [1, 6, -1, 10]

-- test cases
-- smaller sub sequence list
-- bigger sub sequence list
-- smaller list
-- bigger list