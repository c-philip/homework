var word : string
var neword : string := ""
put "gimme a word. " ..
get word
for i : 1 .. length (word)
    if index ("aeiou", word (i)) not= 0 then
	neword += chr (ord (word (i)) - ord ("a") + ord ("A"))
    else
	neword += word (i)
    end if
end for
put neword
%-------------------------------------------------------------------------
var word2 : string
var neword2 : string := ""
put "gimme a word. " ..
get word2
for i : 1 .. length (word2)
    if index ("qwrtypsdfghjklzxcvbnm", word2 (i)) not= 0 then
	neword2 += chr (ord (word2 (i)) - ord ("a") + ord ("A"))
    else
	neword2 += word2 (i)
    end if
end for
put neword2
%-------------------------------------------------------------------------
var word3 : string
var neword3 : string := ""
put "gimme a word. " ..
get word3
for i : 1 .. length (word3)
    if index ("aeiou", word3 (i)) not= 0 then
	case index ("aeiou", word3 (i)) of
	    label 1 :
		neword3 += "e"
	    label 2 :
		neword3 += "i"
	    label 3 :
		neword3 += "o"
	    label 4 :
		neword3 += "u"
	    label 5 :
		neword3 += "a"
	end case
    else
	neword3 += word3 (i)
    end if
end for
put neword3
%----------------------------------------------------------------------------
var word4 : string
var neword4 : string := ""
put "gimme a word. " ..
get word4
for i : 1 .. length (word4)
    if word4 (i) >= "a" and word4 (i) <= "z" then
	neword4 += chr (ord (word4(i)) - ord ("a") + ord ("A"))
    elsif word4 (i) >= "A" and word4 (i) <= "a" then
	neword4 += chr (ord (word4 (i)) - ord ("A") + ord ("a"))
    end if
end for
put neword4

%-----------------------------------------------------------------------------
var word5 : string
var neword5 : string := ""
put "gimme a word. " ..
get word5
for i : 1 .. length (word5)
    if i mod 2 not= 0 then
	if word5 (i) >= "a" and word5 (i) <= "z" then
	    neword5 += chr (ord (word5 (i)) - ord ("a") + ord ("A"))
	else
	    neword5 += word5 (i)
	end if
    elsif i mod 2 = 0 then
	if word5 (i) >= "A" and word5 (i) <= "a" then
	    neword5 += chr (ord (word5 (i)) - ord ("A") + ord ("a"))
	else
	    neword5 += word5 (i)
	end if
    end if
end for
put neword5
