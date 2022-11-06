local args = {...}

local computerName = os.getComputerLabel()
local urgentCareNeeded = false

function tunnel()
	turtle.dig()
	turtle.forward()
	turtle.digUp()
end

function findCoal()
	local slotNum = 0
	repeat
		slotNum = slotNum + 1
	until slotNum >= 16 or turtle.getItemDetail(slotNum).name == "minecraft:coal"
	
	return slotNum
	
end

function fuel()
	local fuelAmount = turtle.getFuelLevel()
	os.setComputerLabel("Fuel: "..tostring(fuelAmount))
	if fuelAmount < 20 then
		local slotNum = findCoal()
		if turtle.getItemDetail(slotNum).name == "minecraft:coal" then
			turtle.refuel(turtle.getItemDetail(slotNum).count)
		else
			os.setComputerLabel("LOW FUEL!")
			urgentCareNeeded = true
		end
		
	end
end



--// Loop //--

fuel()

local x = 0
if tonumber(args[1]) == -1 then x = -999999 end
repeat 
	x = x + 1
	tunnel()
	fuel()
	if urgentCareNeeded == true then break end
until x >= tonumber(args[1])
os.setComputerLabel(computerName)

--// Pastebin: 75Lknc3W //--
