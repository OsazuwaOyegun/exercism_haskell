Grains :: {}.{
	grains_on_square : U8 -> Try(U64, _)
    grains_on_square = |square| {
        if square>64 or square<1 {
             Err(BadNumber)
        }
        else {
                Ok(U64.pow(2,square.to_u64() - 1))
        }
    }

	total_grains : U64
	total_grains = U64.highest
}
