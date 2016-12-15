-- Find the last element of a list.

-- Example in Haskell:

-- Prelude> myLast [1,2,3,4]
-- 4
-- Prelude> myLast ['x','y','z']
-- 'z'

-- solution 0 (not well.)
myLast' :: [a] -> a
myLast' xs = if (null xs) || (length xs == 0)
                then error "invalid input"
                else xs !! ((length xs) - 1)

-- solution 1 (better)
myLast'' :: [a] -> a
myLast'' [] = error "empty list error."
myLast'' (x:[]) = x
myLast'' xs = myLast (tail xs)

-- solution 2
myLast''' :: [a] -> a
myLast''' [] = error "empty list error."
myLast''' (x:xs) = if (length xs == 0)
    then x
    else myLast2 xs
