--[[
  glob.lua
  Version: 18.01.20
  Copyright (C) 2018 Jeroen Petrus Broks
  
  ===========================
  This file is part of a project related to the Phantasar Chronicles or another
  series or saga which is property of Jeroen P. Broks.
  This means that it may contain references to a story-line plus characters
  which are property of Jeroen Broks. These references may only be distributed
  along with an unmodified version of the game. 
  
  As soon as you remove or replace ALL references to the storyline or character
  references, or any termology specifically set up for the Phantasar universe,
  or any other univers a story of Jeroen P. Broks is set up for,
  the restrictions of this file are removed and will automatically become
  zLib licensed (see below).
  
  Please note that doing so counts as a modification and must be marked as such
  in accordance to the zLib license.
  ===========================
  zLib license terms:
  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.
  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:
  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
]]

local glob = {}

glob.items = {}

function glob:ItemGet(gtag)
    local tag = gtag:upper()
    glob.items[tag] = glob.items[tag] or Use('Script/Data/IAA/'..tag..".lua")
    return glob.items[tag]
end    


function glob:itemhelp(item)
               local helptext = item.Title .. "\n" .. item.Desc
               if item.Heal and item.Heal>0 then
                  if     item.Heal_Type == 'Absolute' then helptext = helptext .. "\nHeals "..item.Heal.." HP"
                  elseif item.Heal_Type == "Percent"  then helptext = helptext .. "\nHeals "..item.Heal.."% of your maximum HP"
                  end
               end    
               for k,v in spairs(item) do
                      if prefixed(k,"Cure")  and v then helptext = helptext .. "\nCures "..right(k,#k-4) end
                      if prefixed(k,"Cause") and v then helptext = helptext .. "\nCauses "..right(k,#k-5) end
               end
               return helptext
end

return glob