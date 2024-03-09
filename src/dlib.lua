-- dlib | simple library full of useful things (ft. crappy hacky code, probably.)
-- MIT License, just give some credit if you use this.
-- For contacting, just contact directly at xduskashesreal@gmail.com for the moment.

-- Two options for loading it: require() or _G populating. Uncomment/comment out according to your use case. By default, using require. Find the _G population at the bottom.


local dlib = {}

dlib.ver = 1.0

-- basic useful crap

function dlib.isEmpty(s) -- Check is something is empty.
	return s == nil or s == ""
end

dlib.type = {} -- dlib type stuff.

function dlib.type.compareTypes(thing1,thing2) -- Compare types of two things.
	if type(thing1) ~= type(thing2) then
		return false
	elseif type(thing1) == type(thing2) then -- dumb and probably redundant, but it works. If it ain't broke, don't fix it.
		return true
	end
end

dlib.math = {} -- Math functions.

function dlib.math.isEven(number)
	return number % 2 == 0
end
--
function dlib.math.isOdd(number)
	return number % 2 ~= 0
end

-- _G or require(), comment out/uncomment appropriately.
return dlib

-- _G.dlib = dlib -- This puts dlib into _G when dlib itself gets run.
