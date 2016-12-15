-- (*) Find the last but one element of a list.

-- Example in Haskell:

-- Prelude> myButLast [1,2,3,4]
-- 3
-- Prelude> myButLast ['a'..'z']
-- 'y'

myButLast :: [a] -> a
myButLast [] = error "empty list error."
myButLast [_] = error "too few error."
myButLast (x:xs)
    | length xs == 1 = x
    | otherwise = myButLast xs