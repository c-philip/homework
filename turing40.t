import GUI

View.Set ("graphics: 500;500")

var growingb, guessingb : int
var growing2, guessing2 : int
var back, finish : int
var size : int :=0

procedure f
    GUI.Hide (finish)
    GUI.Show (growingb)
    GUI.Show (guessingb)
    size := 0
end f

procedure guessing
    var number, guess: int
    var tries : int := 0
    randint (number, 1 , 100)
    GUI.Hide (growingb)
    GUI.Hide (guessingb)
    loop
	put "take a guess of our number. "
	get guess
	if number > guess then
	    put "my number is higher."
	elsif number < guess then
	    put "my number is lower."
	end if
	tries += 1
	exit when guess = number
    end loop
    put "it took you ", tries, "tries."
    cls
    finish := GUI.CreateButton (200, 240, 100, "Congratulations!", f)
end guessing

procedure growing
    size += 10
    GUI.SetSize (growing2, 75 + size, 15 + size)
    if 75+size >= 500 then
	GUI.Hide (growing2)
	finish := GUI.CreateButton (200, 240, 100, "Congratulations!", f)
    end if
end growing

procedure gb
    GUI.Hide (growingb)
    GUI.Hide (guessingb)
    growing2 := GUI.CreateButton (0, 0, 10, "Click me!", growing)
end gb

procedure b
    cls
    GUI.Show (growingb)
    GUI.Show (guessingb)
    GUI.Show (back)
    GUI.Hide (growing2)
    size := 0
end b

growingb := GUI.CreateButton (100, 225, 100, "Growing Game", gb) 
guessingb := GUI.CreateButton (300, 225, 100, "Guessing Game", guessing)
back := GUI.CreateButton (400, 450, 25, "Back", b) 
loop
    exit when GUI.ProcessEvent
end loop
