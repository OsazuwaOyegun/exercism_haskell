module Pangram (isPangram) where
import Data.Char

isPangram :: String -> Bool
isPangram [] = False
isPangram text = 
    26 == length (znub (map toLower text))

-- znub will remove duplicates and non alphabets
znub :: [Char] -> [Char]
znub [] = []
znub (x:xs)
  | x `notElem` ['a'..'z'] || x `elem` xs = znub xs
  | otherwise  = x : znub xs