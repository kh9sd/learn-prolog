meets_in(cs307,shillman).
meets_in(cs220,zoom).
is_lab(shillman).
takes(turing, cs307).
takes(hopper, cs307).
takes(alberuni, cs220).

takes_lab(S) :- takes(S, C), meets_in(C, L), is_lab(L).
/**
run with [exercises/labs]
type ; to iterate through takes_lab(X)
*/
