module Mines where

exampleData :: [String]
exampleData = ["4", "4", "*.........*...*.", "0", "0"]

exampleGrid :: [String]
exampleGrid = ["*...", "....", "..*.", "..*."]

-----------------------------------------------------------------------

{--
  Transform string to -> adjacent counted string:
  1. Turn string to char postion tuples
  2. Find adjacent positions for each position
  3. Get characters in each adjacent position
  4. Count how many '*' in each position
  5. Transform adjecent counts to string lines
--}
type Pos = (Int, Int)

type CheckablePos = Maybe Pos

type GridPositions = [[CheckablePos]]

-- Turn grid string to position tuples
-- e.g ["*...", "....", "..*.", "..*."]
-- = [[Boom,(1,2), (1,3), (1,4)]..[(row,col)]]
{--
* revisit basic numeric types
* revisit recursion and folds
* find a functions that iterates and gives you the current position its on
* Why choose foldl instead of foldr
* Could MapAccuumulate be used here
--}

stringGridToPos :: [String] -> GridPositions
stringGridToPos gridStr =
  snd $
    foldl
      ( \acc currRow ->
          let rowNumber = fst acc + 1
              accGridPos = (snd acc)
           in (rowNumber, accGridPos ++ [parseRow currRow rowNumber])
      )
      (0, [])
      gridStr

parseRow :: String -> Int -> [CheckablePos]
parseRow strRow rowNumber =
  snd $
    foldl
      ( parseRow' rowNumber
      )
      (0, [])
      strRow

parseRow' ::
  Int ->
  (Int, [CheckablePos]) ->
  Char ->
  (Int, [CheckablePos])
parseRow' rowPos acc character
  | character == '*' = (colPos, (snd acc) ++ [Nothing])
  | otherwise = (colPos, (snd acc) ++ [Just (rowPos, colPos)])
  where
    colPos = fst acc + 1

-- Find adjcent poistion in tuple
-- e.g [[Boom,(1,2), (1,3), (1,4)]..[(row,col)]]
-- = [firstpos:Boom secondpos:[(1,1),(1,3), (2,1), (2,2), (2,3)]]
type AdjacentGroup = Maybe [Pos]

posAdjacentGroups :: GridPositions -> AdjacentGroup
posAdjacentGroups = undefined

-- Get characters in adjacent position
-- e.g [Boom sndpos:[(1,1),(1,3), (2,1), (2,2), (2,3)]]
-- = [Boom,"*....", ...]
type CharacterGroups = [Maybe String]

adjacentCharacterGroups :: AdjacentGroup -> CharacterGroups
adjacentCharacterGroups = undefined

-- For each positions adjacents count how many '*' they are
-- e.g Boom,"*....", ...]
-- = [[Boom, 1, 0, 0], [...]]
type AdjacentCount = [Maybe Int]

countCharacterGroups :: CharacterGroups -> AdjacentCount
countCharacterGroups = undefined

-- For each adjacent count turn to lines of characters
-- e.g [[Boom, 1, 0, 0], [...]]
-- = "*100\n0000\n"
toLines :: AdjacentCount -> String
toLines = undefined

-----------------------------------------------------------------------

-- main :: IO ()
-- main = putStrLn $ proccesRows exampleGrid