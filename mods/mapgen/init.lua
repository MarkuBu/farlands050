mapgen = {}

minetest.register_on_mapgen_init(function(mgparams)
	minetest.set_mapgen_params({mgname="v7", flags = "caves, dungeons, light, decorations"})
end)


--~ print(dump(mapgen.biome_ids))
--~ print(dump(minetest.registered_biomes))
--~ print(minetest.get_biome_id("grassland"), "***********************************oo")

mapgen.path = minetest.get_modpath("mapgen")

--~ local schematics = {
--~ "bamboo1",
--~ "deciduous_tree1",
--~ "dungeon4",
--~ "palmtree",
--~ "willow2",
--~ "bamboo2",
--~ "deciduous_tree2",
--~ "ipe",
--~ "pine2",
--~ "willow",
--~ "bamboo5",
--~ "deciduous_tree3",
--~ "junglepalm",
--~ "pine",
--~ "baobab1",
--~ "dungeon1",
--~ "jungletree",
--~ "pyramid2",
--~ "baobab2",
--~ "dungeon2",
--~ "oak",
--~ "pyramid",
--~ "baobab",
--~ "dungeon3",
--~ "oak_s",
--~ }

--~ function mapgen:schematic_to_lua()
	--~ for _, name in ipairs(schematics) do
		--~ local building = minetest.get_modpath("mapgen").."/schematics/"..name..".mts"
		--~ local str = minetest.serialize_schematic(building, "lua", {lua_use_comments = false, lua_num_indent_spaces = 0}).." return(schematic)"

		--~ local schematic = loadstring(str)()
		--~ local f = assert(io.open(minetest.get_modpath("mapgen").."/schematics/"..name..".lua", "w"))
		--~ f:write(dump(schematic))
		--~ f:close()
		--print(dump(schematic))
	--~ end
--~ end

--~ mapgen:schematic_to_lua()

mapgen.version = tonumber(minetest.get_version()["string"]:sub(3,3))

dofile(mapgen.path.."/nodes.lua")
dofile(mapgen.path.."/mapgen.lua")
dofile(mapgen.path.."/crafts.lua")
