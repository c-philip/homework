import GUI

View.Set ("graphics:192; 275")
Window.Set (defWinId, "title:Calculator")
GUI.SetBackgroundColor (gray)

%number var--------------------------------------------------------
var b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, bpoint : int

%operations var----------------------------------------------------
var bplus, bsub, bmult, bdiv, bequal, percent : int

%top row var-------------------------------------------------------
var bsqrt, bsquare: int

%reset var---------------------------------------------------------
var quitButton, reset : int

procedure dummy
end dummy

%number buttons----------------------------------------------------
b0 := GUI.CreateButton (10, 10, 81, "0", dummy)
bpoint := GUI.CreateButton (100, 10, 35, ".", dummy)
b1 := GUI.CreateButton (10, 45, 10, "1", dummy)
b2 := GUI.CreateButton (55, 45, 10, "2", dummy)
b3 := GUI.CreateButton (100, 45, 10, "3", dummy)
b4 := GUI.CreateButton (10, 80, 10, "4", dummy)
b5 := GUI.CreateButton (55, 80, 10, "5", dummy)
b6 := GUI.CreateButton (100, 80, 10, "6", dummy)
b4 := GUI.CreateButton (10, 115, 10, "7", dummy)
b5 := GUI.CreateButton (55, 115, 10, "8", dummy)
b6 := GUI.CreateButton (100, 115, 10, "9", dummy)

%operation buttons------------------------------------------------
bequal := GUI.CreateButton (145, 10, 37, "=", dummy)
bplus  := GUI.CreateButton (145, 45, 37, "+", dummy)
bsub := GUI.CreateButton (145, 80, 37, "-", dummy)
bmult := GUI.CreateButton (145, 115, 37, "*", dummy)
bdiv := GUI.CreateButton (145, 150, 37, "/", dummy)
percent := GUI.CreateButton (141, 185, 10, "%", dummy)

%top button-------------------------------------------------------
bsqrt := GUI.CreateButton (10, 150, 62, "sqrt", dummy)
bsquare := GUI.CreateButton (81, 150, 55, "x2", dummy)

%reset buttons----------------------------------------------------
quitButton := GUI.CreateButton (10, 185, 78, "Off", GUI.Quit)
reset := GUI.CreateButton (95, 185, 10, "C", dummy)
loop
    exit when GUI.ProcessEvent
end loop
