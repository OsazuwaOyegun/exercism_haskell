import math
import sequtils

proc sumOfSquares*(n: int): int =
  (1..n).toSeq.mapIt(it^2).sum

proc squareOfSum*(n: int): int =
  (1..n).toSeq.sum^2

proc difference*(n: int): int =
  squareOfSum(n) - sumOfSquares(n)
