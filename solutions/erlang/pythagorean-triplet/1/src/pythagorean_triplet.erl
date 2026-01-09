-module(pythagorean_triplet).

-export([triplets_with_sum/1]).


triplets_with_sum(Limit) -> 
    [{A, B, C} || 
        A <- lists:seq(1, Limit div 2),
        B <- lists:seq(A, Limit div 2),
        C <- [trunc(math:sqrt(A*A + B*B))],
        C*C =:= A*A + B*B,
        A + B + C =:= Limit].
