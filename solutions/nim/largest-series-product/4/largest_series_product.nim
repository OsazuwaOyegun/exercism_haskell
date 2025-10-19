import sequtils, strutils
import math

proc largestProduct*(s: string, span: int): int =
  if s.anyIt(not it.isDigit) or (span > s.len()) or span < 0 : raise newException(ValueError, "Bad Juju!!")
  
  let n = s.len
  let count = if span <= n: n - span + 1 else: 0

  var substrings: seq[int] = @[]
  
  if count > 0:
      for i in 0 .. count - 1:
        var substr = s[i .. i + span - 1].mapIt(parseInt($it)).prod  # change char digit to actual numeric digit and multiply them
        substrings.add(substr) # Add each substring prooduct to sequence
  
  substrings.max() # Return the maximum substring product
