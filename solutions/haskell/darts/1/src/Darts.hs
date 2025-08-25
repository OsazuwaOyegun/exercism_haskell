module Darts (score) where

score :: Float -> Float -> Int
score x y =
    let r = sqrt (x^2 + y^2)
    in score' r

score' r =
    if (r <= 1) then 10
    else if (r <= 5) then 5
    else if (r <= 10) then 1
    else 0


