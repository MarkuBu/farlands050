
-- Biomes for floatlands

-- TODO Temporary simple biomes to be replaced by special floatland biomes later.

function mapgen.register_floatland_biomes(floatland_level, shadow_limit)

	minetest.register_biome({
		name = "floatland_grassland",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		--node_riverbed = "",
		--depth_riverbed = ,
		y_min = floatland_level + 4,
		y_max = 31000,
		heat_point = 50,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "floatland_grassland_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		--node_riverbed = "",
		--depth_riverbed = ,
		y_min = shadow_limit,
		y_max = floatland_level + 3,
		heat_point = 50,
		humidity_point = 50,
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.016,
			scale = 0.012,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"floatland_grassland"},
		y_min = floatland_level + 4,
		y_max = 31000,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/deciduous_tree1.mts",
		flags = "place_center_x, place_center_z",
	})
end


