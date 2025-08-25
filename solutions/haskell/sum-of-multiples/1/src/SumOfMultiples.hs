module SumOfMultiples (sumOfMultiples) where

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples [] _limit = 0
sumOfMultiples factors limit = 
    sumOfMultiples' factors limit []

sumOfMultiples' []     _limit acc   = sum acc
sumOfMultiples' (0:[]) _limit acc   = sum acc
sumOfMultiples' (f:fs) limit  acc   = sumOfMultiples' fs limit (foldl (\acc x -> if (x `notElem` acc) then (x:acc) else acc) acc [f,f+f..limit-1])
