var numba : int
put "Gimme an integer. " ..
get numba
for i : 0 .. numba by 4
    put i, " " ..
end for
put ""
%2-------------------------------------------------------------
var weight : real
var total_weight, numberweights : real := 0
loop
    put "gimme the weight of the package. Put 0 to exit " ..
    get weight
    exit when weight = 0
    total_weight += weight
    numberweights += 1
end loop
put "the average weight is ", total_weight / numberweights, " kg."
%3-------------------------------------------------------------
var height : real
var unitt : string
put "gimme the length of ur thingy. " ..
get height
put "is this in inches or cm? " ..
get unitt
    case unitt of
    label "inches", "inchs", "inch" :
	put "that is ", height * 2.5, " cm."
    label "cm", "centimeters", "centimetres", "centimeter" :
	put "that is ", height / 2.5, " inches."
    label :
	put "that is not a given unit."
end case
%4-------------------------------------------------------------
const MULTIPLE := 10
var integer : real
loop
    put "gimme an intger. " ..
    get integer
    exit when integer mod 1 = 0
    put "that is not an integer."
end loop
for i : 1 .. MULTIPLE
    put i, " x ", integer, "=", i * integer
end for
%5------------------------------------------------------------
const TOALANGLE := 180
var angle1, angle2, angle3 : real
put "gimme the angles a triangle. " ..
get angle1, angle2, angle3
if angle1 + angle2 + angle3 = TOALANGLE then 
	if angle1 = angle2 and angle1=angle3 then 
	    put "it is an equilateral triangle"    
	elsif angle1 = angle2 or angle1=angle3 then
	    put " it is an isosceles triangle"
	else 
	    put "it is a scalene triangle"
	end if
else
    put "they dont add up to 180"
end if
%6----------------------------------------------------------------
var speed_limit, speed, fine: int
loop
    put "what is the speed limit? Put 0 to exit. " ..
    get speed_limit
    exit when speed_limit = 0
    put "what is your speed. " ..
    get speed
    fine := speed-speed_limit
    if fine < 1 then
	put "Congratulations, you are within the speed limit!"
    elsif fine < 21 then
	put "You are speeding and your fine is $100. "
    elsif fine < 31 then
	put "You are speeding and your fine is $270. "
    else 
	put "You are speeding and your fine is $500. "
    end if
end loop
put "thank you."
%7-------------------------------------------------------------
var weight1, weight2, weight3 : real
put "gimme the weight of the 3 porridges. "..
get weight1, weight2, weight3
if weight1 > weight3 and weight1 < weight2 then
    put "the mom's porridge is " , weight1, "."
elsif weight2 > weight1 and weight2 < weight3 then
    put "the mom's porridge is " , weight2, "."
elsif weight2 > weight3 and weight2 < weight1 then
    put "the mom's porridge is " , weight2, "."
elsif weight3 > weight2 and weight3 < weight1 then
    put "the mom's porridge is " , weight3, "."
elsif weight3 > weight1 and weight3 < weight2 then
    put "the mom's porridge is " , weight3, "."
else
    put "the mom's porridge is " , weight1, "."
end if
    
