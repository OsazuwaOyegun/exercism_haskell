Triangle :: {}.{
	is_equilateral : (F64, F64, F64) -> Bool
	is_equilateral = |(a, b, c)| 
        is_a_triangle((a,b,c)) and (a == b and b == c)

	is_isosceles : (F64, F64, F64) -> Bool
	is_isosceles = |(a, b, c)| 
        is_a_triangle((a,b,c)) and (a==b or a==c or b==c)

	is_scalene : (F64, F64, F64) -> Bool
	is_scalene = |(a, b, c)| 
        is_a_triangle((a, b, c)) and a != b and b != c and a != c
}

is_a_triangle: (F64, F64, F64) -> Bool
is_a_triangle = |(a,b,c)| 
    (a > 0 and b > 0 and c > 0) and (a + b >= c or b + c >= a or a + c >= b)
