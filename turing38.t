import GUI

var text_cm, text_inch : int
procedure cm (text: string)
    var new_number : string
    new_number := realstr(strreal (text) /2.54) 
    GUI.SetText (text_inch, new_number )
end cm

procedure inch (text:string)
    var number, new_number: string
    number := GUI.GetText (text_cm)
    new_number := realstr(strreal (number) /2.54)
    GUI.SetText (text_inch, new_number)
end inch

text_cm := GUI.CreateTextField (10, 100, 200, "cm", cm)
var textFieldLabel : int := GUI.CreateLabel(10, 100 +  GUI.GetHeight (text_cm), "cm")

text_inch := GUI.CreateTextField (10, 30, 200, "", inch)

var quitButton : int := GUI.CreateButton (300, 30, 80, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
%----------------------------------------------------------------------------
import GUI

var text1, text2 : int
var label1, label2 : int

procedure textf (word: string)
    var new_word : string := ""
    for i : 1 .. length (word)
	if index ("aeiouAEIOU" , word (i)) = 0 then
	    new_word += word (i)
	end if
    end for
    GUI.SetText (text2, new_word)
end textf

procedure texts (word: string)
    var word2, new_word : string
    word2 := GUI.GetText (text1)
    for i : 1 .. length (word2)
	if index ("aeiouAEIOU" , word2 (i)) = 0 then
	    new_word += word2 (i)
	end if
    end for
    GUI.SetText (text2, new_word)
end texts

text1 := GUI.CreateTextField (20, 50, 200, "Please enter a word.", textf)
label1 := GUI.CreateLabel (20, 50 + GUI.GetHeight (text1), "Before:")

text2 := GUI.CreateTextField (240, 50, 200, "", texts)
label2 := GUI.CreateLabel (240, 50 + GUI.GetHeight (text2), "After:")

var quitButton : int := GUI.CreateButton (550, 50, 80, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
%-----------------------------------------------------------------------------
import GUI

var text1, text2 : int
var label1, label2 : int

procedure text3 (number : string)
    var number2 : string
    number2 := intstr (strint (number)+1)
    GUI.SetText (text2, number2)
end text3

procedure text4 (number : string)
    var number2 : string
    number2 := intstr (strint (GUI.GetText (text1)) + 1)
    GUI.SetText (text2, number2)
end text4

text1 := GUI.CreateTextField (100, 50, 200, "please enter a number", text3)
label1 := GUI.CreateLabel (100, 50+ GUI.GetHeight (text1), "Please enter a number.")

text2 := GUI.CreateTextField (400, 50, 100, "", text4)
label2 := GUI.CreateLabel (400, 50 + GUI.GetHeight (text2), "")

var quitButton : int := GUI.CreateButton (300, 30, 80, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop








