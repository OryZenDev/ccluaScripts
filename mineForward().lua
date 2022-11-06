function mineForward(num) 
  local x = 0
  repeat 
    x = x + 1 
    turtle.dig() 
    turtle.forward() 
    turtle.digUp() 
  until x >= num 
end
