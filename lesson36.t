procedure angle (a1 : real, a2 : real, a3 : real)
    if a1 = a2 and a1 = a3 and a2 = a3 then
	put "your triangle is equilateral."
    elsif a1 = a2 or a1 = a3 or a3 = a2 then
	put "your triangle is iscoseles."
    else
	put "your triangle is scalene."
    end if
end angle

var a1, a2, a3 : real
loop
    put "gimme the 3 angles. " ..

    get a1, a2, a3
    if a1 + a2 + a3 not= 180 then
	put "those arent valid angles. "
    else
	exit
    end if
end loop
angle (a1, a2, a3)
%-------------------------------------------------------------------
procedure pattern (lines : int)
    for i : 1 .. lines
	put repeat (intstr (i), i)
    end for
end pattern

var line : int
put "how many lines do u want? " ..
get line
pattern (line)
%------------------------------------------------------------------
procedure t (w : int, h : int)
    for i : 1 .. w
	put "*" ..
    end for
    put ""
    for j : 1 .. h
	for i : 1 .. (w div 2)
	    put " " ..
	end for
	put "*"
    end for
end t

var w, h : int
loop
    put "gimme the height and width of the t. "..
    get h, w
    if w mod 2= 0 then
	put "the width has to be odd"
    else
	exit
    end if
end loop
t (w, h)
%------------------------------------------------------------------
procedure factor (f1 : int, f2 :int)
    if f2 mod f1 = 0 then
	put "the first number is a factor of the 2nd one."
    else
	put "the first number isn't a factor of the 2nd one."
    end if
end factor

factor (2, 4)
factor (5, 6)
%-----------------------------------------------------------------
function remove (letter : char, word :string) : string
    var new1 : string := ""
    for i : 1 .. length (word)
	if word (i) not= letter then
	    new1 += word (i)
	end if
    end for
    result new1
end remove

put remove ("t", "spaheltgjio")
%-----------------------------------------------------------------
function r2 (word : string) : string
    if length(word) mod 2 = 0 then
	result word(length(word) div 2)
    else
	result word(length(word) div 2 + 1)
    end if
end r2

var word: string
put "gimme a word. " ..
get word
put r2 (word)
%-----------------------------------------------------------------
procedure fraction (top : int, bot : int)
    var factors, factor2  : int := 0
    for i : 1 .. top
	factors := i
	if factors mod bot = 0 and factors mod top = 0 then
	    factor2 := factors
	elsif bot mod factors = 0 and top mod factors= 0 then
	    factor2 := factors
	end if
    end for
    put top / factor2
    put "--"
    put bot / factor2
end fraction
var dem, num : int
loop
put "gimme the numerator and denominator of ur fraction"
get num, dem
fraction (num, dem)
end loop
