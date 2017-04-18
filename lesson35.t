procedure p1 (lines : int)
    for decreasing i : lines .. 1
	put repeat ("%", i), repeat ("&", i)
    end for
end p1
p1 (9)
%-------------------------------------------------------
procedure p2 (lines : int)
    for i : 1 .. lines
	put repeat ("/\\" , i)
    end for
end p2
p2 (9)
%-------------------------------------------------------
procedure p3 (lines : int)
    for decreasing i : lines .. 1
	    put repeat (" " , lines-i), repeat ("*", i)
    end for
end p3
p3 (10)
%------------------------------------------------------
procedure pt (s1 : int, s2 : int, s3 : int)
    put "the perimeter of the triangle is ",s1 + s2 + s3, "."
end pt

procedure at (h : int, b : int)
    put "the area of the triangle is ", h*b/2 , "."
end at

procedure pc (r : int)
    const PI:= 3.14159265358979323846264338
    put "the perimeter of the circle is ", 2*r*PI, "."
end pc

procedure ac (r : int)
    const PI:= 3.14159265358979323846264338
    put "the area of the circle is ", r**2*PI, "."
end ac

procedure pr (s1 : int, s2 : int)
    put "the perimeter of the rectangle is ",2*(s1 + s2), "."
end pr

procedure ar (h : int, b : int)
    put "the area of the rectangle is ", h*b , "."
end ar

var shape : string
var s1, s2, s3 : int 
put "gimme a shape: "..
get shape
case shape of
    label "circle", "Circle" :
	put "gimme the radius. "..
	get s1
	s2:= 0
	s3 := 0
	pc (s1)
	ac(s1)
    label "square", "rectangle" :
	put "gimme the length and width. "..
	get s1, s2
	s3 := 0
	pr (s1, s2)
	ar(s1, s2)
    label "triangle", "Triangle" :
	put "gimme the side lengths. "..
	get s1, s2, s3
	pt (s1, s2, s3)
	put "gimme the height and base. "..
	get s1, s2
	s3 := 0
	at(s1, s2)
end case
%------------------------------------------------------
procedure strongarm (number : int)
    var number2 : int :=0
    for i : 1 .. length (intstr (number))
	number2 += strint (intstr (number) (i)) **3
    end for
    if number2 = number then
	put "your number is an armstrong number."
    else
	put "your number isn't an armstrong number."
    end if
end strongarm
strongarm (371)
strongarm (1)
strongarm (26526)
%------------------------------------------------------
function reverse (number : int) : int
    var new1 : string := ""
    var string1 : string
    string1 := intstr (number)
    for decreasing i :  length (string1) .. 1
	new1 += string1 (i)
    end for
    result strint (new1)
end reverse
    
procedure palin (number : int)
    if number - reverse (number) = 0 then
	put "ur number is a palingdrome. "
    else
	put "ur number isn't a palindrome."
    end if
end palin

palin (101)
palin (69)
palin (666)
    
