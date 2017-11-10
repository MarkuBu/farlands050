mapgen = {}

local path = minetest.get_modpath("mapgen")

mapgen.version = tonumber(minetest.get_version()["string"]:sub(3,3))

dofile(path.."/nodes.lua")
dofile(path.."/mapgen.lua")
dofile(path.."/crafts.lua")
