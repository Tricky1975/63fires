--[[
  StatusBar.lua
  Version: 18.01.08
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
local width, height = love.graphics.getDimensions( )
local quad
local background background = background or LoadImage(console.background)
local portraits={}
local cats = {'HP','AP','VIT'}
local cols = {HP={0,0,0},AP={0,0,255},VIT={255,180,0}}
local csuf = {HP='',AP='',VIT=''}
local hgraph = {}

local function StatusBar()
   -- $USE script/subs/diginum
   local psize = #RPGParty   if not laura.assert(psize>0,"I tried to draw a party bar with an empty party") then return end
   local charwidth=width/psize
   local gaugestart,gaugeend=math.floor(charwidth*.25),math.ceil(charwidth*.85)
   local gaugewidth=gaugeend-gaugestart
   quad = quad or love.graphics.newQuad(0,0,width,120,ImageWidth(background),ImageHeight(background))
   white()
   QuadImage(background,quad,0,height-120)
   for i,tag in pairs(RPGParty) do
       local cx = (i-1)*charwidth
       local cy = height-120
       portraits[tag] = portraits[tag] or LoadImage( 'GFX/Portret/'..tag..'/General.png' )
       QHot(portraits[tag],'lb')
       DrawImage(portraits[tag],cx,height)
       cols.HP[2]=math.floor((rpg:Points(tag,'HP').Have/rpg:Points(tag,'HP').Maximum)*255)
       cols.HP[1]=255-cols.HP[2]
       for ic,cat in ipairs(cats) do
           local y = (ic*35)+(height-120)
           black()
           Rect(-1+cx+gaugestart,y-6,gaugewidth+2,6)
           color(cols[cat][1],cols[cat][2],cols[cat][3])
           local p = rpg:Points(tag,cat)
           if p.Maximum>0 then  -- As Ryanna begins on 0 AP this is needed or else we will suffer
              Rect(cx+gaugestart,y-5,(p.Have/p.Maximum)*gaugewidth,4)
           end   
           diginum(rpg:Points(tag,cat).Have,cx+math.ceil(charwidth*.95),y-25)
           hgraph[cat]=hgraph[cat] or LoadImage('GFX/Diginum/'..cat..".png")
           DrawImage(hgraph[cat],cx+(charwidth*.10),y-25)
       end
   end
end


return StatusBar
