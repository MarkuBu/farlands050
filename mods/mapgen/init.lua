mapgen = {}

minetest.register_on_mapgen_init(function(mgparams)
	minetest.set_mapgen_params({mgname="v7", flags = "caves, dungeons, light, decorations"})
end)


--~ print(dump(mapgen.biome_ids))
--~ print(dump(minetest.registered_biomes))
--~ print(minetest.get_biome_id("grassland"), "***********************************oo")

mapgen.path = minetest.get_modpath("mapgen")

mapgen.version = tonumber(minetest.get_version()["string"]:sub(3,3))

dofile(mapgen.path.."/nodes.lua")
dofile(mapgen.path.."/mapgen.lua")
dofile(mapgen.path.."/crafts.lua")
