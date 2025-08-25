module Anagram (anagramsFor) where

import Data.Char
import Data.List

myFunc = map (toLower)

anagramsFor :: String -> [String] -> [String]
anagramsFor xs xss = [x | x <- xss, myFunc x /= myFunc xs, sort (myFunc x) == sort (myFunc xs)]
