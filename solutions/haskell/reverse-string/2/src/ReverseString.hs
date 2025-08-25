module ReverseString (reverseString) where

reverseString :: String -> String
reverseString = foldr (\x acc -> acc ++ [x]) []
