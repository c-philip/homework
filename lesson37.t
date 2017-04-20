import GUI
procedure test
    put "lmao nope "..
end test

var test1 : int
var quit1 : int

test1 := GUI.CreateButton (100, 50, 100, "quit", test)
test1 := GUI.CreateButton (100, 100, 100, "quit", test)
test1 := GUI.CreateButton (300, 100, 100, "quit", test)
test1 := GUI.CreateButton (100, 125, 100, "quit", test)
test1 := GUI.CreateButton (100, 75, 100, "quit", test)
test1 := GUI.CreateButton (300, 150, 100, "quit", test)
test1 := GUI.CreateButton (200, 100, 100, "quit", test)
test1 := GUI.CreateButton (200, 150, 100, "quit", test)
test1 := GUI.CreateButton (200, 125, 100, "quit", test)
test1 := GUI.CreateButton (200, 50, 100, "quit", test)
test1 := GUI.CreateButton (100, 150, 100, "quit", test)
quit1 := GUI.CreateButton (300, 75, 100, "quit", GUI.Quit)
test1 := GUI.CreateButton (300, 100, 100, "quit", test)
test1 := GUI.CreateButton (300, 150, 100, "quit", test)
test1 := GUI.CreateButton (300, 125, 100, "quit", test)
test1 := GUI.CreateButton (200, 75, 100, "quit", test)
test1 := GUI.CreateButton (300, 50, 100, "quit", test)

loop
    exit when GUI.ProcessEvent
end loop
