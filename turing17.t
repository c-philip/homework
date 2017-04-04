var numba : int
var s, m , b : int := 0
for i : 1 .. 3
    randint (numba, 100, 200)
    if numba > b then
	s := m    
	m := b
	b := numba
    elsif numba > s and numba < b and numba > m then
	s := m
	m := numba
    else
	s := numba
    end if
end for
put s, " ", m, " ", b
%-----------------------------------------------------------------------------
var numba2 : int
var ammount : int := 0
loop
    randint (numba2, 1, 100)
    put numba2, " " ..
    exit when numba2 >= 90
    ammount += 1
end loop
put ""
put "there are ", ammount, " numbers before a number is in the 90s."
%------------------------------------------------------------------------------
var die1, die2 : int
var double : int := 0
for i : 1 .. 30
    randint (die1, 1, 6)
    randint (die2, 1, 6)
    put die1 : 2, die2 : 4, " " : 10 ..
    if die1 = die2 then
	double += 1
    end if
end for
put "there are ", double, " doubles."
%-----------------------------------------------------------------------------
var die3, die4 : int
var s7 : int := 0
loop
    randint (die3, 1, 6)
    randint (die4, 1, 6)
    put die3 : 2, die4 : 4
    exit when die3 + die4 = 7
    s7 += 1
end loop
put "i rolled ", s7, " times before i rolled a 7."
%------------------------------------------------------------------------------
var die5, die6 : int
var seye : int := 0
loop
    randint (die6, 1, 6)
    randint (die5, 1, 6)
    put die5 : 2, die6 : 4, " " : 4 ..
    exit when die5 = 1 and die6 = 1
    seye += 1
end loop
put ""
put "i rolled ", seye, " times before i rolled snake eyes."
