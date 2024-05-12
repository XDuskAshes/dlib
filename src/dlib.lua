-- dlib | simple library full of useful things (ft. crappy hacky code, probably.)
-- MIT License, just give some credit if you use this.
-- For contacting, just contact directly at xduskashesreal@gmail.com for the moment.

-- Two options for loading it: require() or _G populating. Uncomment/comment out according to your use case. By default, using require. Find the _G population at the bottom.


local dlib = {}

local ver = 0.1

local oldError = error

local function error(sText,func)
	oldError("(dlib:"..func..") "..sText,0)
end

-- basic useful crap

-- Dumb little empty checker.
-- (i.e. 'isEmpty("")' would return true)
function dlib.isEmpty(s)
	return s == nil or s == ""
end

function dlib.getVersion()
	return ver
end

-- Print to the middle of the screen with optional y offset.
function dlib.cPrint(sText, yOffset)
	local w, h = term.getSize()
    local x, y = term.getCursorPos()
    term.setCursorPos(math.floor((w - #sText) / 2) + 1, y + yOffset)
    print(sText)
end

-- Print text at the bottom of the screen.
function dlib.bPrint(sText)
	local cx,cy = term.getCursorPos()
	local tx,ty = term.getSize()

	if dlib.isEmpty(sText) then
		error("Cannot print nothing at the bottom.","bPrint")
	elseif #sText > tx then
		error("Length of text supplied ("..#sText..") exceeds term width ("..tx..")","bPrint")
	end
	
	term.setCursorPos(1,ty)
	write(sText)
	term.setCursorPos(cx,cy)
end

dlib.math = {} -- Math functions.

function dlib.math.isEven(number)
	return number % 2 == 0
end

function dlib.math.isOdd(number)
	return number % 2 ~= 0
end

-- _G or require(), comment out/uncomment appropriately.
return dlib

-- _G.dlib = dlib -- This puts dlib into _G when dlib itself gets run.
