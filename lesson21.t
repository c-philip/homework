%1--------------------------------------------------------------------------
for decreasing row : 4 .. 1
    for i : 1 .. row
	put "*" ..
    end for
    put ""
end for
put ""
%2--------------------------------------------------------------------------
for decreasing row2 : 10 .. 1 by 2
    for i2 : 1 .. row2
	put "*" ..
    end for
    put ""
end for
%3--------------------------------------------------------------------------
var row : int := 6
for decreasing r : row .. 1
    for i : 1 .. 10
	put "* " ..
    end for
    put ""
end for
%4--------------------------------------------------------------------------
var row4 : int
put "how many rows do u want? " ..
get row
for decreasing r : row .. 1
    for i : 1 .. 10
	put "* " ..
    end for
    put ""
end for
%5--------------------------------------------------------------------------
for row5 : 2 .. 5
    for i : 1 .. 5 - row5
	put " " ..
    end for
    for i : 1 .. row5 - 2
	put "$$" ..
    end for
    put "$"
end for
%6--------------------------------------------------------------------------
for row6 : 1 .. 5
    for i : 1 .. 5 - row6 
	put " "..
    end for
    for i2 : 1 .. row6
	put i2-row6 ..
    end for
    put ""
end for
%in gave up on this question
    


