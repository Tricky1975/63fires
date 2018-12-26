--[[
**********************************************
  
  WorldMap.lua
  (c) Jeroen Broks, 2018, All Rights Reserved.
  
  This file contains material that is related 
  to a storyline that is which is strictly
  copyrighted to Jeroen Broks.
  
  This file may only be used in an unmodified
  form with an unmodified version of the 
  software this file belongs to.
  
  You may use this file for your study to see
  how I solved certain things in the creation
  of this project to see if you find valuable
  leads for the creation of your own.
  
  Mostly this file comes along with a project
  that is for most part released under an
  open source license and that means that if
  you use that code with this file removed
  from it, you can use it under that license.
  Please check out the other files to find out
  which license applies.
  This file comes 'as-is' and in no possible
  way the author can be held responsible of
  any form of damages that may occur due to 
  the usage of this file
  
  
 **********************************************
 
version: 18.12.22
]]
-- File generated by MyData on Saturday 22/12/2018
-- License: Don't use this data for your own purposes!


local ret = {
	["C_PRIMOS"] = {
		["Dungeon"] = false,
		["Folder"] = "PrimosRegion",
		["Kthura"] = "TOWN_Primos",
		["Layer"] = "exterior",
		["LocationName"] = "Primos",
		["LocationPrefix"] = "The village of",
		["Start"] = "Start",
		["UnlockedFromStart"] = true,

	},
	["C_WINDVILLE"] = {
		["Dungeon"] = false,
		["Folder"] = "Beaufort",
		["Kthura"] = "TOWN_Windville",
		["Layer"] = "Outside",
		["LocationName"] = "WindVille",
		["LocationPrefix"] = "The City of",
		["Start"] = "Start",
		["UnlockedFromStart"] = false,

	},
	["D_BEAUFORTFOREST"] = {
		["Dungeon"] = true,
		["Folder"] = "Beaufort",
		["Kthura"] = "DUNG_BeaufortForest",
		["Layer"] = "#001",
		["LocationName"] = "Beaufort Forest",
		["LocationPrefix"] = "",
		["Start"] = "Start",
		["UnlockedFromStart"] = true,

	},
	["D_BLACKTOWER"] = {
		["Dungeon"] = true,
		["Folder"] = "Beaufort",
		["Kthura"] = "DUNG_BlackTower",
		["Layer"] = "#000",
		["LocationName"] = "Black Tower",
		["LocationPrefix"] = "The",
		["Start"] = "Start",
		["UnlockedFromStart"] = false,

	},
	["D_FORGOTTENGRAVEYARD"] = {
		["Dungeon"] = true,
		["Folder"] = "Beaufort",
		["Kthura"] = "DUNG_Graveyard",
		["Layer"] = "#005",
		["LocationName"] = "Forgotten Graveyard",
		["LocationPrefix"] = "The",
		["Start"] = "FromWorld",
		["UnlockedFromStart"] = true,

	},
	["D_FREDDY"] = {
		["Dungeon"] = true,
		["Folder"] = "Beaufort",
		["Kthura"] = "DUNG_Freddy",
		["Layer"] = "#001",
		["LocationName"] = "Freddy's Restaurant",
		["LocationPrefix"] = "",
		["Start"] = "Start",
		["UnlockedFromStart"] = false,

	},
	["D_HAUNTEDTUNNEL"] = {
		["Dungeon"] = true,
		["Folder"] = "PrimosRegion",
		["Kthura"] = "dung_hauntedtunnel",
		["Layer"] = "#001",
		["LocationName"] = "Haunted Tunnel",
		["LocationPrefix"] = "The",
		["Start"] = "Start",
		["UnlockedFromStart"] = false,

	},
	["D_ODDMAZE"] = {
		["Dungeon"] = true,
		["Folder"] = "PrimosRegion",
		["Kthura"] = "DUNG_OddMaze",
		["Layer"] = "#001",
		["LocationName"] = "Odd Maze",
		["LocationPrefix"] = "",
		["Start"] = "Start",
		["UnlockedFromStart"] = false,

	},
	["D_PRAIRIE"] = {
		["Dungeon"] = true,
		["Folder"] = "PrimosRegion",
		["Kthura"] = "TRUE_Prairie",
		["Layer"] = "surface",
		["LocationName"] = "Prairie",
		["LocationPrefix"] = "The",
		["Start"] = "Start",
		["UnlockedFromStart"] = false,

	},
	["D_PRIMOSTUNNEL"] = {
		["Dungeon"] = true,
		["Folder"] = "Beaufort",
		["Kthura"] = "DUNG_PrimosTunnel",
		["Layer"] = "#001",
		["LocationName"] = "Primos Tunnel",
		["LocationPrefix"] = "",
		["Start"] = "Start",
		["UnlockedFromStart"] = false,

	},
	["D_PRIMOSTUNNEL2"] = {
		["Dungeon"] = true,
		["Folder"] = "PrimosRegion",
		["Kthura"] = "DUNG_PrimosTunnel",
		["Layer"] = "#002",
		["LocationName"] = "Primos Tunnel",
		["LocationPrefix"] = "",
		["Start"] = "FromPrimos",
		["UnlockedFromStart"] = true,

	},
	["D_STARROW"] = {
		["Dungeon"] = true,
		["Folder"] = "Beaufort",
		["Kthura"] = "DUNG_Starrow",
		["Layer"] = "#001",
		["LocationName"] = "Caves of Starrow",
		["LocationPrefix"] = "The",
		["Start"] = "Start",
		["UnlockedFromStart"] = false,

	},

}

return ret

