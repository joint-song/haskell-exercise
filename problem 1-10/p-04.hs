-- Find the number of elements of a list.

-- Example in Haskell:

-- Prelude> myLength [123, 456, 789]
-- 3
-- Prelude> myLength "Hello, world!"
-- 13

-- solution 0:
myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

-- solution 1:
-- From: https://wiki.haskell.org/99_questions/Solutions/4
myLength' :: [a] -> Int
myLength' list = acc list 0
    where   
        acc [] n = n
        acc (_:xs) n = acc xs (n + 1)