
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
