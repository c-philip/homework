var word : string
var word_length : int := 0
loop
    put "gimme a word. Put done to exit: " ..
    get word
    exit when word = "done"
    word_length := length (word)
    if word_length < 2 then
	put "that word is too short."
    else
	put "the first letter is ", word (1), " and the last letter is ", word (word_length)
    end if
end loop
put "thaznks for using the program."
%---------------------------------------------------------------------------------------
var length1, length2 : int := 0
var word2 : string
var word3 : string := ""
for i : 1 .. 10
    put "gimme a word: " ..
    get word2
    length1 := length (word2)
    if length1 > length2 then
	length2 := length1
	word3 := word2
    end if
end for
put "the longest word is ", word3, "."
%-----------------------------------------------------------------------------------------
var word4 : string
var vowels : int := 0
loop
    put "gimme a word. put done to exit. "..
    get word4
    exit when word4 = "done"
    for i : 1 .. length (word4)
	if word4 (i) = "a" or word4 (i) = "e" or word4 (i) = "i" or word4 (i) = "o" 
	or word4 (i) = "u" or word4 (i) = "A" or word4 (i) = "E" or word4 (i) = "I" 
	or word4 (i) = "O" or word4 (i) = "U" then
	    vowels += 1
	end if
    end for
    put "that word has ", vowels , " vowels."
    vowels := 0
end loop
put "thanks."
%-------------------------------------------------------------------------------
var word5 : string
var word_length2 : int := 0
put "gimme a word: " ..
get word5
word_length2 += length (word5)
for i : 1.. word_length2
    put word5 (i)
end for
%-------------------------------------------------------------------------------
var word6 : string
var word_length3 : int := 0
put "gimme a word: " ..
get word6
word_length3 += length (word6)
for decreasing j : word_length3 .. 1
    put word6 (j)
end for
%-------------------------------------------------------------------------------
var word7 : string
var word_length4 : int := 0
put "gimme a word: " ..
get word7
word_length4 += length (word7)
put word7 (word_length4)..
for h : 2.. word_length4-1
    put word7 (h)..
end for
put word7(1)
