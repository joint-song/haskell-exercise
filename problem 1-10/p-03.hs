-- Find the K'th element of a list. The first element in the list is number 1.

-- Example in Haskell:

-- Prelude> elementAt [1,2,3] 2
-- 2
-- Prelude> elementAt "haskell" 5
-- 'e'

elementAt :: [a] -> Int -> a
elementAt [] _ = error "empty list error or index is out of range"
elementAt (x:xs) i
    | i <= 0 = error "index should be positive integer or element is not found"
    | i == 1 = x
    | otherwise = elementAt xs (i-1)