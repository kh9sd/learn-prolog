ordered_line(1,2,3).
ordered_line(4,5,6).
ordered_line(7,8,9).

ordered_line(1,4,7).
ordered_line(2,5,8).
ordered_line(3,6,9).

ordered_line(1,5,9).
ordered_line(3,5,7).

line(A, B, C) :- ordered_line(A, B, C).
line(A, B, C) :- ordered_line(A, C, B).
line(A, B, C) :- ordered_line(B, A, C).
line(A, B, C) :- ordered_line(B, C, A).
line(A, B, C) :- ordered_line(C, A, B).
line(A, B, C) :- ordered_line(C, B, A).

player_x(X).
player_o(X).



win(A) :- player_x(B), player_x(C), line(A, B, C).
block_win(A) :- player_o(B), player_o(C), line(A, B, C).
split(A) :- player_x(B), player_x(C), different(B, C), line(A, B, D), line(A, C, E), empty(D), empty(C).
strong_build(A) :- player_x(B), line(A, B, C), empty(C), \+risky(C).


