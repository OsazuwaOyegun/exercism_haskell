module Pangram (isPangram) where

import Data.Char

isPangram :: String -> Bool
isPangram [] = False
isPangram text =
  length (znub (map toLower text)) == 26


-- znub will remove duplicates and non alphabets
znub :: [Char] -> [Char]
znub [] = []
znub (x:xs)
  | x `notElem` ['a'..'z'] || x `elem` xs = znub xs
  | otherwise  = x : znub xs