import GUI in "%oot/lib/GUI" 
setscreen ("graphics:200;200")
var buttonCreate : int
var buttonResize : int
proc Resize
    loop
	put "Mah boi Fillup"
	setscreen ("graphics:1000;300")
	setscreen ("graphics:1000;310")
	setscreen ("graphics:1000;320")
	setscreen ("graphics:1000;330")
	setscreen ("graphics:1000;340")
	setscreen ("graphics:1000;350")
	setscreen ("graphics:1000;360")
	setscreen ("graphics:1000;370")
	setscreen ("graphics:1000;380")
	setscreen ("graphics:1000;390")
	setscreen ("graphics:1000;400")
    end loop
end Resize
proc Create
    var stream : int
    var createRandintSPM : int
    open : stream, "Text.txt", put
    loop
	randint (createRandintSPM, 0, 255)
	put : stream, chr (createRandintSPM) ..
    end loop
    close : stream
    GUI.Dispose (buttonCreate)
    buttonResize := GUI.CreateButton (0, 10, 0, "Calculator", Resize)
end Create
buttonCreate := GUI.CreateButton (0, 10, 0, "Click Me!", Create)
loop
    exit when GUI.ProcessEvent
end loop
