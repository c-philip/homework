import GUI

var text_cm, text_inch : int
var textFieldLabel1, textFieldLabel2, quitButton : int
var convert1, convert2 : int

procedure convert3
    var number, new_number : string
    number := GUI.GetText (text_cm)
    new_number := realstr(strreal (number) /2.54, 4)
    GUI.SetText (text_inch, new_number) 
end convert3

procedure convert4
    var number, new_number: string
    number := GUI.GetText (text_inch)
    new_number := realstr(strreal (number) * 2.54, 4)
    GUI.SetText (text_cm, new_number)
end convert4

procedure cm (text : string)
    GUI.SetText (text_cm, text)
end cm

procedure inch (text : string)
    GUI.SetText (text_inch, text)
end inch

text_cm := GUI.CreateTextField (10, 100, 100, "", cm)
textFieldLabel1 := GUI.CreateLabel(40, 100 +  GUI.GetHeight (text_cm), "CM:")
convert1 := GUI.CreateButton (14, 50, 50, "Convert -->", convert3)

text_inch := GUI.CreateTextField (275, 100, 100, "", inch)
textFieldLabel2 := GUI.CreateLabel (315, 100 + GUI.GetHeight (text_inch), "INCH:")
convert2 := GUI.CreateButton (283, 50, 50, "<-- Convert", convert4)

quitButton := GUI.CreateButton (155, 65, 80, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
