module Scrabble (scoreLetter, scoreWord) where

import Data.Char

scoreLetter :: Char -> Integer
scoreLetter letter =
  scoreLetter' (toUpper letter)

scoreLetter' letter
    | letter `elem` "AEIOULNRST" = 1
    | letter `elem` "DG"         = 2
    | letter `elem` "BCMP"       = 3
    | letter `elem` "FHVWY"      = 4
    | letter == 'K'              = 5
    | letter `elem` "JX"         = 8
    | letter `elem` "QZ"         = 10
    | otherwise                  = 0

scoreWord :: String -> Integer
scoreWord word = sum $ map (\x->scoreLetter x) word

