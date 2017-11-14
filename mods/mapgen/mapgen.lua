

dofile(mapgen.path.."/ores.lua")
dofile(mapgen.path.."/biomes.lua")
dofile(mapgen.path.."/schematics/lua_schematics.lua")
dofile(mapgen.path.."/decoration.lua")
dofile(mapgen.path.."/floatland_biomes.lua")


--
-- Register decorations
--





--~ minetest.register_on_generated(function(minp, maxp)
	--~ if maxp.y < -20 or maxp.y > 1000 then
		--~ return
	--~ end
	--~ local dirt = minetest.find_nodes_in_area(minp, maxp,
		--~ {"mapgen:dirty_water_source"})
	--~ for n = 1, #dirt do
			--~ local pos = {x = dirt[n].x, y = dirt[n].y, z = dirt[n].z }
			--~ local name = minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name
				--~ if name == "mapgen:lavender_flower" or name == "mapgen:swamp_grass_1" or name == "mapgen:giantgrass" or name == "mapgen:swamp_grass_2" or name == "mapgen:swamp_grass_3" or name == "mapgen:swamp_grass_4" or name == "mapgen:swamp_grass_5" then
					--~ minetest.env:remove_node({x=pos.x, y=pos.y+1, z=pos.z})
				--~ end
	--~ end
--~ end)


--underground dungeons

--~ local dungeon_rarity = 1000

--~ minetest.register_on_generated(function(minp, maxp)
	--~ if maxp.y > -60 or maxp.y < -30000 then
		--~ return
	--~ end
	--~ local stone = minetest.find_nodes_in_area(minp, maxp,
		--~ {"default:stone_with_diamond"})
	--~ for n = 1, #stone do
		--~ if math.random(1, dungeon_rarity) == 1 then
			--~ local pos = {x = stone[n].x, y = stone[n].y, z = stone[n].z }
			--~ local number = math.random(1,4)
				--~ if math.random(1,10) == 1 then
				--~ minetest.place_schematic(pos, minetest.get_modpath("mapgen").."/schematics/dungeon"..number..".mts", random, {["decoblocks:chest"] = "mobs_m:mimic_chest2", ["mobs_m:mimic_chest2"] = "decoblocks:chest",}, true)
				--~ else
				--~ minetest.place_schematic(pos, minetest.get_modpath("mapgen").."/schematics/dungeon"..number..".mts", random, {}, true)
				--~ end
		--~ end
	--~ end
--~ end)



--
-- Detect mapgen, flags and parameters to select functions
--

-- Get setting or default
local mgv7_spflags = minetest.get_mapgen_setting("mgv7_spflags") or
	"mountains, ridges, floatlands, caverns"
local captures_float = string.match(mgv7_spflags, "floatlands")
local captures_nofloat = string.match(mgv7_spflags, "nofloatlands")

-- Get setting or default
-- Make global for mods to use to register floatland biomes
default.mgv7_floatland_level =
	minetest.get_mapgen_setting("mgv7_floatland_level") or 1280
default.mgv7_shadow_limit =
	minetest.get_mapgen_setting("mgv7_shadow_limit") or 1024

minetest.clear_registered_biomes()
minetest.clear_registered_ores()
minetest.clear_registered_decorations()

local mg_name = minetest.get_mapgen_setting("mg_name")

if mg_name == "v6" then
	default.register_mgv6_ores()
	default.register_mgv6_decorations()
-- Need to check for 'nofloatlands' because that contains
-- 'floatlands' which makes the second condition true.
elseif mg_name == "v7" and
		captures_float == "floatlands" and
		captures_nofloat ~= "nofloatlands" then
	-- Mgv7 with floatlands and floatland biomes
	mapgen.register_farland_biomes(default.mgv7_shadow_limit - 1)

	local i
	mapgen.biome_ids = {}
	for name, desc in pairs(minetest.registered_biomes) do
		i = minetest.get_biome_id(desc.name)
		mapgen.biome_ids[i] = desc.name
		--~ print(desc.name, i)
	end


	mapgen.register_ores(default.mgv7_shadow_limit - 1)
	mapgen.register_decorations(default.mgv7_shadow_limit - 1)

	mapgen.register_floatland_biomes(
		default.mgv7_floatland_level, default.mgv7_shadow_limit)
else
	default.register_biomes(31000)
	default.register_ores()
	default.register_decorations()
end

--fruit
if minetest.get_modpath("fruit") then
	fruit.register_ores()
end

if minetest.get_mapgen_params().mgname == "v6" then
	--~ farming.register_mgv6_decorations()
	flowers.register_mgv6_decorations()
else
	--~ farming.register_mgv7_decorations()
	flowers.register_decorations()
end
