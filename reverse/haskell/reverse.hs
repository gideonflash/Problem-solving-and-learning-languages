-- Reversal functions
reverse' :: [Integer] -> [Integer] -> [Integer]
reverse' [] acc = acc
reverse' (a : []) acc = reverse' [] (append' a acc)
reverse' (a : rest) acc = reverse' rest (append' a acc)

append' :: Integer -> [Integer] -> [Integer]
append' curr (a : []) = curr : a : []
append' curr (a : rest) = curr : append' a rest
append' curr [] = [curr]
