
-- Swamp biome

-- Ores

--~ minetest.register_ore({
	--~ ore_type        = "blob",
	--~ ore             = "mapgen:dirt_with_swampgrass",
	--~ wherein         = {"mapgen:dirty_water_source"},
	--~ clust_scarcity  = 9 * 9 * 9,
	--~ clust_size      = 8,
	--~ y_min           = -15,
	--~ y_max           = 5,
	--~ noise_threshold = 0.0,
	--~ noise_params    = {
		--~ offset = 0.5,
		--~ scale = 0.2,
		--~ spread = {x = 5, y = 5, z = 5},
		--~ seed = 766,
		--~ octaves = 3,
		--~ persist = 0.5
	--~ },
	--~ biomes = {"swamp_ocean"}
--~ })

-- Bushes

-- Trees

	--Willow tree

--~ minetest.register_decoration({
	--~ deco_type = "schematic",
	--~ place_on = {"mapgen:dirt_with_swampgrass"},
	--~ sidelen = 16,
	--~ noise_params = {
		--~ offset = 0.0,
		--~ scale = -0.015,
		--~ spread = {x = 250, y = 250, z = 250},
		--~ seed = 2,
		--~ octaves = 3,
		--~ persist = 0.66
	--~ },
	--~ biomes = {"swamp"},
	--~ y_min = 2,
	--~ y_max = upper_limit,
	--~ schematic = minetest.get_modpath("mapgen") .. "/schematics/willow.mts",
	--~ flags = "place_center_x, place_center_z",
--~ })

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"mapgen:dirt_with_swampgrass"},
	sidelen = 16,
	noise_params = {
		offset = 0.01,
		scale = 0.001,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"swamp"},
	y_min = 1,
	y_max = 10,
	--schematic = minetest.get_modpath("mapgen") .. "/schematics/willow2.mts",
	schematic = mapgen.willow2,
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"mapgen:dirt_with_swampgrass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0025,
		scale = 0.001,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"swamp_hills"},
	y_min = 11,
	y_max = 100,
	--schematic = minetest.get_modpath("mapgen") .. "/schematics/willow2.mts",
	schematic = mapgen.willow2,
	flags = "place_center_x, place_center_z",
})

-- Plants

local function register_swamp_grass_decoration(offset, scale, length, biomes)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"mapgen:dirt_with_swampgrass", "default:dirt"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = biomes,
		y_min = 0,
		y_max = upper_limit,
		decoration = "mapgen:swamp_grass_" .. length,
	})
end

	--Swamp grasses

register_swamp_grass_decoration(-0.03,  0.09,  5, {"swamp"})
register_swamp_grass_decoration(-0.015, 0.075, 4, {"swamp"})
register_swamp_grass_decoration(0,      0.06,  3, {"swamp"})
register_swamp_grass_decoration(0.015,  0.045, 2, {"swamp"})
register_swamp_grass_decoration(0.03,   0.03,  1, {"swamp"})
register_swamp_grass_decoration(-0.02,  0.09,  5, {"swamp_hills"})
register_swamp_grass_decoration(-0.01,  0.075, 4, {"swamp_hills"})
register_swamp_grass_decoration(0.5,    0.06,  3, {"swamp_hills"})
register_swamp_grass_decoration(0.02,   0.045, 2, {"swamp_hills"})
register_swamp_grass_decoration(0.035,  0.03,  1, {"swamp_hills"})

--giant grass

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:dirt_with_swampgrass",
	sidelen = 16,
	fill_ratio = 0.1,
	biomes = {"swamp"},
	decoration = "mapgen:giantgrass",
	height = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:dirt_with_swampgrass",
	sidelen = 16,
	fill_ratio = 0.2,
	biomes = {"swamp_hills"},
	decoration = "mapgen:giantgrass",
	height = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:dirt_with_swampgrass",
	sidelen = 16,
	fill_ratio = 0.02,
	biomes = {"swamp"},
	decoration = "mapgen:lavender_flower",
	height = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:dirt_with_swampgrass",
	sidelen = 16,
	fill_ratio = 0.03,
	biomes = {"swamp_hills"},
	decoration = "mapgen:lavender_flower",
	height = 1,
})

-- Decoration


--local willow_schematic = minetest.get_modpath("mapgen") .. "/schematics/willow2.mts"
local willow_schematic = mapgen.willow2

minetest.register_on_generated(function(minp, maxp)
	if minp.y ~= -32 then
		return
	end
	local csize = vector.add(vector.subtract(maxp, minp), 1)

	local zstride = maxp.x - minp.x + 1
	local biomemap = minetest.get_mapgen_object("biomemap")
	local heightmap = minetest.get_mapgen_object("heightmap")
	local swamp_ocean_id = minetest.get_biome_id("swamp_ocean")

	local noise_1 = minetest.get_perlin_map({offset = 0,
											  scale = 1,
											  seed = 1234,
											  spread = {x = 2, y = 2, z = 2},
											  octaves = 3,
											  persist = 0,6,
											  lacunarity = 2.6,
											  flags = "noeased"},
											  csize):get2dMap_flat({x=minp.x, y=minp.z, z=1})

	for z = minp.z, maxp.z do
	for x = minp.x, maxp.x do
		local index_2d = (z - minp.z) * zstride + (x - minp.x) + 1
		local biome = biomemap[index_2d]
		local rand = math.random(100)
		local above = {x = x, y = 2, z = z}
		if biome == swamp_ocean_id and heightmap[index_2d] > -2 and heightmap[index_2d] < 1 and noise_1[index_2d] > 0 then
			minetest.set_node({x = x, y = 1, z = z}, {name = "mapgen:dirt_with_swampgrass"})
			minetest.set_node({x = x, y = 0, z = z}, {name = "default:dirt"})
			if rand == 1 then
				minetest.place_schematic({x = above.x - 3, y = above.y, z = above.z - 3},
					willow_schematic, "random", nil, false)
			elseif rand < 30 then
				minetest.set_node(above, {name = "mapgen:swamp_grass_" .. math.random(5)})
			elseif rand < 35 then
				minetest.set_node(above, {name = "mapgen:tallgrass"})
			elseif rand < 40 then
				minetest.set_node(above, {name = "mapgen:giantgrass"})
			elseif rand < 42 then
				minetest.set_node(above, {name = "mapgen:lavender_flower"})
			--~ elseif rand < 44 then
				--~ minetest.set_node(above, {name = "mapgen:aloe_vera"})
			end
		elseif biome == swamp_ocean_id and heightmap[index_2d] == -2 then
			minetest.set_node({x = x, y = 0, z = z}, {name = "default:dirt"})
			minetest.set_node({x = x, y = -1, z = z}, {name = "default:dirt"})
			minetest.set_node({x = x, y = 1, z = z}, {name = "mapgen:dirty_water_source"})
			if rand == 1 then
				minetest.place_schematic({x = above.x - 3, y = above.y - 1, z = above.z - 3},
					willow_schematic, "random", nil, false)
			end
		elseif biome == swamp_ocean_id and heightmap[index_2d] == -3 then
			minetest.set_node({x = x, y = -1, z = z}, {name = "default:dirt"})
			minetest.set_node({x = x, y = -2, z = z}, {name = "default:dirt"})
			minetest.set_node({x = x, y = 1, z = z}, {name = "mapgen:dirty_water_source"})
		elseif biome == swamp_ocean_id and heightmap[index_2d] < 1 and heightmap[index_2d] > -4 then
			minetest.set_node({x = x, y = 1, z = z}, {name = "mapgen:dirty_water_source"})
		end
	end
	end

	--~ local nodes, count = minetest.find_nodes_in_area_under_air(
			--~ {x = minp.x, y = minp.y + 33, z = minp.z},
			--~ {x = maxp.x, y = maxp.y - 46, z = maxp.z},
			--~ {"mapgen:dirt_with_swampgrass"}
	--~ )
	--~ for _, node in ipairs(nodes) do
		--~ local above = {x = node.x, y = node.y + 1, z = node.z}
		--~ if minetest.get_node(above).name == "air" then
			--~ local rand = math.random(100)
			--~ if rand == 1 then
				--~ minetest.place_schematic({x = above.x - 3, y = above.y, z = above.z - 3},
					--~ willow_schematic, "random", nil, false)
			--~ elseif rand < 30 then
				--~ minetest.set_node(above, {name = "mapgen:swamp_grass_" .. math.random(5)})
			--~ elseif rand < 35 then
				--~ minetest.set_node(above, {name = "mapgen:tallgrass"})
			--~ elseif rand < 40 then
				--~ minetest.set_node(above, {name = "mapgen:giantgrass"})
			--~ elseif rand < 42 then
				--~ minetest.set_node(above, {name = "mapgen:lavender_flower"})
			--~ elseif rand < 44 then
				--~ minetest.set_node(above, {name = "mapgen:aloe_vera"})
			--~ end
		--~ end
	--~ end
end)
