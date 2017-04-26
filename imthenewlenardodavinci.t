setscreen ("graphics")

var xcoord, ycoord : array 1 .. 3 of int

drawfill (maxx, maxy, blue, black)

drawfillbox (0,0, maxx, 100, green)

drawfillbox (200, 101, 400, 270, yellow)
drawfillbox (220, 190, 270, 250, white)
drawfillbox (275, 101, 325, 175, brown)

drawline (245, 190, 245, 250, black)
drawline (220, 220, 270, 220, black)

drawfillarc (0, maxy, 150, 150, 270, 360, red)
drawfillarc (0, maxy, 100, 100, 270, 360, yellow)

xcoord (1) := 150
xcoord (2) := 300
xcoord (3) := 450
ycoord (1) := 271
ycoord (2) := 351
ycoord (3) := 271
drawfillpolygon (xcoord, ycoord, 3, red)
