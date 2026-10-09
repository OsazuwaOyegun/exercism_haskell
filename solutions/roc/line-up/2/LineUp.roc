LineUp :: {}.{
	format : Str, U64 -> Str
	format = |name, rank| "${name}, you are the ${rank.to_str()}${suffix(rank)} customer we serve today. Thank you!"
    
    suffix = |rank| match if [11,12,13].contains(rank%100) rank else rank%10 {
        11|12|13 => "th"
        1 => "st"
        2 => "nd"
        3 => "rd"
        _ => "th"
    }
}