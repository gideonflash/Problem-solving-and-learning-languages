-- Create a fold, over the list of numbers
-- When thinking of this solution, i had framed it asin
-- looking for a construct in the language that gives me the ability
-- to kick out of the loop when i found my match
-- But being able to kick out the loop is a best case senario,
-- what counts is the change of number of operations as the input of the
-- functions grows.

-- Choosing a record as a way to keep track of things, i have often not used
-- records and my thinking was that the function you create is the one that is
-- exposed. So what i have called pair some can be part of some other function
-- that then extracts what it needs. In terms of run time cost the extraction
-- is not an operation that counts.
data Resolver = Store
  { store :: [Integer],
    target :: Integer,
    result :: Maybe (Integer, Integer)
  }
  deriving (Show)

initial :: Resolver
initial = Store [] 10 Nothing

-- Find target pair total
pairSum :: Integer -> Resolver -> Resolver
pairSum curr (Store xs trgt Nothing)
  | trgt - curr `elem` xs = Store xs trgt (Just (curr, trgt - curr))
  | otherwise = Store (curr : xs) trgt Nothing
pairSum _ (Store xs trgt (Just res)) = Store xs trgt (Just res)
