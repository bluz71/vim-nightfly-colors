-------------------------------------------------------------------------------
-- 
-- Comment
--
-------------------------------------------------------------------------------

-- import the fellas
local lpeg = require 'lpeg'

local leg     = require 'leg'
local parser  = leg.parser

-- aliasing...
local Cs, V, P = lpeg.Cs, lpeg.V, lpeg.P

-- arguments
local args = { ... }

-- the code to parse
subject = args[1] or [==[
  local a, b = x'BOOM, baby!' + 2
  
  function hit_it(t) -- and quit it
    local points = 0
    
    for i, v in ipairs(t) do
      print "time!"
      
      points = points + (math.random() < 0.5) and 3 or 2
    end
    
    return points
  end
]==]

-- now the magic happens....

-- the colors...
local commentColor  = '#808080' -- gray
local stringColor   = '#008000' -- dark green
local numberColor   = '#B00000' -- red
local keywordColor  = '#0000FF' -- blue

-- the patterns...
local COMMENT = parser.COMMENT / function (c) 
  return '<font color="'..commentColor..'"> '..c..'</font>' 
end

local STRING = parser.STRING / function (c) 
  return '<font color="'..stringColor..'">'..c..'</font>' 
end

local NUMBER = parser.NUMBER / function (c)
  return '<i><font color="'..numberColor..'">'..c..'</font></i>' 
end

local KEYWORD = parser.KEYWORD / function (c) 
  return '<b><font color="'..keywordColor..'">'..c..'</font></b>' 
end

-- opening tags
local BOF = parser.BOF / function () return '<html><body><pre>' end

-- closing tags
local EOF = parser.EOF / function () return '</pre></body></html>' end

-- this is here just to keep identifiers like bin2c from being parsed by NUMBER
local ID = parser.IDENTIFIER

-- the substitution pattern. BOF and EOF are there to ensure that the
-- opening and closing tags are there to make the result a valid HTML page.
local patt = Cs( BOF* (COMMENT + STRING + ID + NUMBER + KEYWORD + 1)^0 *EOF )

-- voil!
print(patt:match(subject))
