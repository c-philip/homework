import GUI

View.Set ("graphics:192; 275")
Window.Set (defWinId, "title:Calculator")
GUI.SetBackgroundColor (gray)

var new_number, number1, number2, operation, final_number : string := ""
var number_text : int
%number var--------------------------------------------------------
var b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, bpoint : int

%operations var----------------------------------------------------
var bplus, bsub, bmult, bdiv, bequal, percent : int

%top row var-------------------------------------------------------
var bsqrt, bsquare: int

%reset var---------------------------------------------------------
var quitButton, reset : int

%number procedure--------------------------------------------------
procedure point
    new_number += "."
    GUI.SetText (number_text, new_number)
end point

procedure zero
    new_number += "0"
    GUI.SetText (number_text, new_number)
end zero

procedure one
    new_number += "1"
    GUI.SetText (number_text, new_number)
end one

procedure two
    new_number += "2"
    GUI.SetText (number_text, new_number)
end two

procedure three
    new_number += "3"
    GUI.SetText (number_text, new_number)
end three

procedure four
    new_number += "4"
    GUI.SetText (number_text, new_number)
end four

procedure five
    new_number += "5"
    GUI.SetText (number_text, new_number)
end five

procedure six
    new_number += "6"
    GUI.SetText (number_text, new_number)
end six

procedure seven
    new_number += "7"
    GUI.SetText (number_text, new_number)
end seven

procedure eight
    new_number += "8"
    GUI.SetText (number_text, new_number)
end eight

procedure nine
    new_number += "9"
    GUI.SetText (number_text, new_number)
end nine

%reset stuff--------------------------------------------------------
procedure creset
    new_number := ""
    GUI.SetText (number_text, new_number)
end creset

%operations stuff----------------------------------------------------
procedure mult
    number1 := new_number
    new_number := ""
    operation := "*"
    GUI.SetText (number_text, new_number)
end mult

procedure divide
    number1 := new_number
    new_number := ""
    operation := "/"
    GUI.SetText (number_text, new_number)
end divide

procedure add
    number1 := new_number
    new_number := ""
    operation := "+"
    GUI.SetText (number_text, new_number)
end add

procedure sub
    number1 := new_number
    new_number := ""
    operation := "-"
    GUI.SetText (number_text, new_number)
end sub

procedure equal
    number2 := new_number
    new_number := ""
    case operation of
	label "*" :
	    final_number := realstr ( (strreal (number1)) * (strreal (number2)), 28)
	label "/" :
	    final_number := realstr ( (strreal (number1)) / (strreal (number2)), 28)
	label "+" :
	    final_number := realstr ( (strreal (number1)) + (strreal (number2)), 28)
	label "-" :
	    final_number := realstr ( (strreal (number1)) - (strreal (number2)), 28)
    end case
    GUI.SetText (number_text, final_number)
end equal

procedure dummy
end dummy

procedure ntext (text : string)
end ntext

%number buttons----------------------------------------------------
b0 := GUI.CreateButton (10, 10, 81, "0", zero)
bpoint := GUI.CreateButton (100, 10, 35, ".", point)
b1 := GUI.CreateButton (10, 45, 10, "1", one)
b2 := GUI.CreateButton (55, 45, 10, "2", two)
b3 := GUI.CreateButton (100, 45, 10, "3", three)
b4 := GUI.CreateButton (10, 80, 10, "4", four)
b5 := GUI.CreateButton (55, 80, 10, "5", five)
b6 := GUI.CreateButton (100, 80, 10, "6", six)
b4 := GUI.CreateButton (10, 115, 10, "7", seven)
b5 := GUI.CreateButton (55, 115, 10, "8", eight)
b6 := GUI.CreateButton (100, 115, 10, "9", nine)

%operation buttons------------------------------------------------
bequal := GUI.CreateButton (145, 10, 37, "=", equal)
bplus  := GUI.CreateButton (145, 45, 37, "+", add)
bsub := GUI.CreateButton (145, 80, 37, "-", sub)
bmult := GUI.CreateButton (145, 115, 37, "*", mult)
bdiv := GUI.CreateButton (145, 150, 37, "/", divide)
percent := GUI.CreateButton (141, 185, 10, "%", dummy)
bsqrt := GUI.CreateButton (10, 150, 62, "sqrt", dummy)
bsquare := GUI.CreateButton (81, 150, 55, "x2", dummy)

%reset buttons----------------------------------------------------
quitButton := GUI.CreateButton (10, 185, 78, "Off", GUI.Quit)
reset := GUI.CreateButton (95, 185, 10, "C", creset)

%text number------------------------------------------------------
number_text := GUI.CreateTextField (10, 230, 172, "", ntext)

loop
    exit when GUI.ProcessEvent
end loop
