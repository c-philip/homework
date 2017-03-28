var n3w : string := ""
var word : string
put "gimme a word. " ..
get word
for i : 1 .. length (word)
    if word (i) not= "d" then
	n3w += word (i)
    end if
end for
put "the new word is ", n3w, "."
%----------------------------------------------------------------------------
var n3w1 : string := ""
var word1 : string
put "gimme a word." ..
get word1
for i : 1 .. length (word1)
    if index ("aeiouAIEOU", word1 (i)) = 0 then
	n3w1 += word1 (i)
    end if
end for
put "the new word is ", n3w1, "."
%----------------------------------------------------------------------------
var word2 : string
var neword1, neword2 : string := ""
put "gimme a word. " ..
get word2
for i : 1 .. length (word2) div 2
    neword1 += word2 (i)
end for
for i : (length (word2) div 2 + 1) .. length (word2)
    neword2 += word2 (i)
end for
put "the new word is ", neword2, neword1, "."
%----------------------------------------------------------------------------
var neword4 : string := ""
var word3 : string
put "gimme a word." ..
get word3
for j : 1 .. length (word3)
    if index ("aeiouAIEOU", word3 (j)) not=0 then
	neword4 += "9"
    else
	neword4 += word3(j)
    end if
end for
put "the new word is ", neword4, "."
%----------------------------------------------------------------------------
var neword3 : string := ""
var word4 : string
put "gimme a word." ..
get word4
for j : 1 .. length (word4)
    if index ("qwrtypsdfghjklzxcvbnmQWRTYPSDFGHJKLZXCVBNM", word4 (j)) not=0 then
	neword3 += "9"
    else
	neword3 += word4(j)
    end if
end for
put "the new word is ", neword3, "."
%----------------------------------------------------------------------------
var neword5 : string := ""
var word5 : string
var vowel : int
put "gimme a word. " ..
get word5
for i : 1 .. length (word5)
    vowel := index ("aeiou", word5 (i))
    if vowel not= 0 then
	case vowel of
	    label 1 :
		neword5 += "A"
	    label 2 :
		neword5 += "E"
	    label 3 :
		neword5 += "I"
	    label 4 :
		neword5 += "O"
	    label 5 :
		neword5 += "U"
	end case
    else
	neword5 += word5 (i)
    end if
end for
put "the new word is ", neword5, "."
%----------------------------------------------------------------------------
