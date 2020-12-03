-- FIND THE LAST ELEMENT IN A LIST

myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (_ : xs) = myLast xs

myLastSafe :: [a] -> Maybe a
myLastSafe [] = Nothing
myLastSafe [x] = Just x
myLastSafe (_ : xs) = myLastSafe xs

-- foldrl
-- const
-- curry
-- foldl
-- error

-- FIND THE SECOND FROM LAST ELEMENT IN A LIST

myButLast :: [a] -> a
myButLast xs = xs !! (length xs - 2)

myButLast' :: [a] -> a
myButLast' = head . tail . reverse