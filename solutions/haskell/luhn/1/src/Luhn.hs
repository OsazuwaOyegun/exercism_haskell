module Luhn (isValid) where

import Data.Char (isDigit, digitToInt)

isValid :: String -> Bool
isValid xs = 
  zsum $ luhnDoubleSecondOfPairs $ reverse (map (digitToInt) (filter (isDigit) xs))

zsum xs
        | xs == [] || xs == [0] = False
        | otherwise = (sum xs) `mod` 10 == 0

luhnDouble :: Int -> Int
luhnDouble n = let x = n * 2 in if x > 9 then x - 9 else x

luhnDoubleSecondOfPairs :: [Int] -> [Int]
luhnDoubleSecondOfPairs (x:y:xs) = x : luhnDouble y : luhnDoubleSecondOfPairs xs
luhnDoubleSecondOfPairs _ = []
