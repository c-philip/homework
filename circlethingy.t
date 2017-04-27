import GUI

var x, y, radius : int
var circle, quit1 : int

procedure c
    cls
    randint (x, 1, maxx)
    randint (y, 1, maxy)
    randint (radius, 1, 300)
    drawfilloval (x, y, radius, radius, blue)
    GUI.Show (circle)
    GUI.Show (quit1)
end c

circle := GUI.CreateButton (100, 100, 50, "create circle", c)
quit1 := GUI.CreateButton (300, 100, 50, "quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
