import GUI

View.Set ("graphics:300;100")
Window.Set (defWinId, "title:Converter of the Temperature")
GUI.SetBackgroundColour (gray)


var text_c, text_f : int
var textFieldLabel1, textFieldLabel2, quitButton : int
var convert1, convert2 : int

procedure convert3
    var number, new_number : string
    number := GUI.GetText (text_c)
    new_number := realstr(strreal (number) * 1.8 + 32, 1)
    GUI.SetText (text_f, new_number) 
end convert3

procedure convert4
    var number, new_number: string
    number := GUI.GetText (text_f)
    new_number := realstr((strreal (number) - 32)/1.8, 1)
    GUI.SetText (text_c, new_number)
end convert4

procedure c (text : string)
    GUI.SetText (text_c, text)
end c

procedure f (text : string)
    GUI.SetText (text_f, text)
end f

text_c := GUI.CreateTextField (27, 50, 50, "", c)
textFieldLabel1 := GUI.CreateLabel(27, 50 +  GUI.GetHeight (text_c), "CELSIUS")
convert1 := GUI.CreateButton (10, 10, 50, "Convert -->", convert3)

text_f := GUI.CreateTextField (217, 50, 50, "", f)
textFieldLabel2 := GUI.CreateLabel (210, 50 + GUI.GetHeight (text_f), "FARENHEIT")
convert2 := GUI.CreateButton (200, 10, 50, "<-- Convert", convert4)

quitButton := GUI.CreateButton (110, 35, 80, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
