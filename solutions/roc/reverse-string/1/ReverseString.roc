import unicode.Grapheme
ReverseString :: {}.{
	reverse : Str -> Str
	reverse = |string| Str.join_with(Grapheme.split(string).rev(), "")
}