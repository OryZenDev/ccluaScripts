local args = {...}

local x = 0
repeat 
	x = x + 1 
	turtle.dig() 
	turtle.forward() 
	turtle.digUp() 
until x >= tonumber(args[1])
