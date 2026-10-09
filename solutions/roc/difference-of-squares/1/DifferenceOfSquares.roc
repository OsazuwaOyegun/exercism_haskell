DifferenceOfSquares :: {}.{
	square_of_sum : U64 -> U64
	square_of_sum = |number| {
		(1..=number).iter().sum().pow(2)
	}

	sum_of_squares : U64 -> U64
	sum_of_squares = |number| {
		(1..=number).iter().map(|n|n*n).sum()
	}

	difference_of_squares : U64 -> U64
	difference_of_squares = |number| {
		square_of_sum(number) - sum_of_squares(number)
	}
}
