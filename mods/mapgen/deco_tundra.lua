
-- Tundra biome

-- Ores

minetest.register_ore({
	ore_type        = "blob",
	ore             = "mapgen:coarse_dirt",
	wherein         = {"default:gravel", "default:sand"},
	clust_scarcity  = 15 * 15 * 15,
	clust_size      = 10,
	y_min           = -10,
	y_max           = 10,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.55,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 766,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"tundra_beach", "tundra_ocean"}
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "default:silver_sand",
	wherein         = {"default:gravel", "default:sand"},
	clust_scarcity  = 15 * 15 * 15,
	clust_size      = 10,
	y_min           = -10,
	y_max           = 10,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.55,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 3245,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"tundra_beach", "tundra_ocean"}
})

-- Bushes

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt"},
	sidelen = 8,
	noise_params = {
		offset = -0.004,
		scale = 0.01,
		spread = {x = 200, y = 200, z = 200},
		seed = 137,
		octaves = 3,
		persist = 0.7,
	},
	biomes = {"tundra"},
	y_min = 1,
	y_max = 1111,
	schematic = minetest.get_modpath("default") .. "/schematics/bush.mts",
	flags = "place_center_x, place_center_z",
})

-- Trees

-- Plants

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt",},
	sidelen = 16,
	noise_params = {
		offset = 0.03,
		scale = 0.045,
		spread = {x = 200, y = 200, z = 200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"tundra"},
	y_min = 1,
	y_max = 1111,
	decoration = "default:grass_4",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt",},
	sidelen = 16,
	noise_params = {
		offset = 0.03,
		scale = 0.045,
		spread = {x = 200, y = 200, z = 200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"tundra"},
	y_min = 1,
	y_max = 1111,
	decoration = "default:grass_3",
})

-- Decoration

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt", "default:stone"},
	sidelen = 1,
	noise_params = {
		offset = 0,
		scale = 1,
		spread = {x = 3, y = 3, z = 3},
		seed = 354,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"tundra"},
	y_min = 1,
	y_max = 1111,
	decoration = "default:snow",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:gravel", "default:silver_sand", "mapgen:coarse_dirt"},
	sidelen = 1,
	noise_params = {
		offset = 0,
		scale = 1,
		spread = {x = 3, y = 3, z = 3},
		seed = 354,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"tundra_beach"},
	y_min = 1,
	y_max = 1,
	decoration = "default:snow",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:stone", "default:dirt"},
	sidelen = 4,
	noise_params = {
		offset = 0.5,
		scale = 1.5,
		spread = {x = 20, y = 20, z = 20},
		seed = 4234,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"tundra"},
	y_min = 1,
	y_max = 1111,
	decoration = "mapgen:moss",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:stone"},
	sidelen = 4,
	noise_params = {
		offset = 1,
		scale = 2,
		spread = {x = 40, y = 40, z = 40},
		seed = 1234123,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"tundra"},
	y_min = 1,
	y_max = 1111,
	decoration = "mapgen:lichen",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt", "default:stone"},
	sidelen = 1,
	noise_params = {
		offset = 0.5,
		scale = 2,
		spread = {x = 3, y = 3, z = 3},
		seed = 354,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"tundra_hills"},
	y_min = 1,
	y_max = 1111,
	decoration = "default:snow",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt", "default:stone"},
	sidelen = 1,
	noise_params = {
		offset = 2,
		scale = 2,
		spread = {x = 3, y = 3, z = 3},
		seed = 354,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"tundra_mountains"},
	y_min = 1,
	y_max = 1111,
	decoration = "default:snow",
})
