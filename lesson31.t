function subtract_5 (number : real) : real
    var new1 : real
    new1 := number - 5
    result new1
end subtract_5

var numba : string
loop
    put "gimme a number: " ..
    get numba
    if strrealok (numba) = false then
	put "you didn't enter a number."
    end if
    exit when strrealok (numba) = true
end loop
put "5 subtracted from the number is ", subtract_5 (strreal (numba)), "."
%---------------------------------------------------------------------------
function factorial (number : int) : int
    var fact : int := 1
    for i : 1 .. number
	fact *= i
    end for
    result fact
end factorial

var numba1 : string
loop
    put "gimme an integer: " ..
    get numba1
    if strintok (numba1) = false then
	put "you didn't enter an integer."
    end if
    exit when strintok (numba1) = true
end loop
put "the factorial of the number is ", factorial (strint (numba1)), "."
%---------------------------------------------------------------------------
function reverse (word : string) : string
    var new_word : string := ""
    for decreasing i : length(word) .. 1
	new_word += word(i)
    end for
    result new_word
end reverse

var word1 : string

put "gimme a word. " ..
get word1
put "your word backwards is ", reverse(word1), "."
