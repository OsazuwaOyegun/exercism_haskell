LineUp :: {}.{
	format : Str, U64 -> Str
	format = |name, rank| match if [11,12,13].contains(rank%100) rank else rank%10 {
		11|12|13 => "${name}, you are the ${rank.to_str()}th customer we serve today. Thank you!"
        1 => "${name}, you are the ${rank.to_str()}st customer we serve today. Thank you!"
        2 => "${name}, you are the ${rank.to_str()}nd customer we serve today. Thank you!"
        3 => "${name}, you are the ${rank.to_str()}rd customer we serve today. Thank you!"
        _ => "${name}, you are the ${rank.to_str()}th customer we serve today. Thank you!"
	}
}
