ScrabbleScore :: {}.{
	score : Str -> U64
	score = |word| {
		word.with_ascii_uppercased().to_utf8().keep_oks(|byte| Str.from_utf8([byte])).map(points).sum()
	}

    points = |n| match n {
        "A"|"E"|"I"|"O"|"U"|"L"|"N"|"R"|"S"|"T" => 1
        "D"|"G" => 2
        "B"|"C"|"M"|"P" => 3
        "F"|"H"|"V"|"W"|"Y" => 4
        "K" => 5
        "J"|"X" => 8
        "Q"|"Z" => 10
        _ => 0
    }
}

