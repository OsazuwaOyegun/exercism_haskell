import algorithm, sequtils, strutils

proc detectAnagrams*(word: string, candidates: openArray[string]): seq[string] =
  let sortedWord = word.toLowerAscii().toSeq().sorted()
  result = @[]  # Initialize an empty sequence of strings
  for candidate in candidates:
    if candidate.toLowerAscii() != word.toLowerAscii() and
       candidate.toLowerAscii().toSeq().sorted() == sortedWord:
      result.add(candidate)
