Isogram :: {}.{
	is_isogram : Str -> Bool
	is_isogram = |phrase| {
		clean(phrase) == clean(phrase) |> Set.from_list() |> Set.to_list()
	}
}

clean = |text| text.with_ascii_uppercased().to_utf8().keep_if(|byte| byte>45 and byte<126)