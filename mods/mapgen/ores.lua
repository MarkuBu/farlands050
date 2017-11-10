
minetest.clear_registered_ores()
-- Blob ores
-- These first to avoid other ores in blobs

--kelp stone

--~ minetest.register_ore({
	--~ ore_type        = "blob",
	--~ ore             = "mapgen:stone_with_sea_grass",
	--~ wherein         = {"default:sand"},
	--~ clust_scarcity  = 16 * 16 * 16,
	--~ clust_size      = 8,
	--~ y_min           = -15,
	--~ y_max           = 0,
	--~ noise_threshold = 0.0,
	--~ noise_params    = {
		--~ offset = 0.5,
		--~ scale = 0.2,
		--~ spread = {x = 5, y = 5, z = 5},
		--~ seed = -316,
		--~ octaves = 1,
		--~ persist = 0.0
	--~ },
--~ })

-- Clay
-- This first to avoid clay in sand blobs

minetest.register_ore({
	ore_type        = "blob",
	ore             = "default:clay",
	wherein         = {"default:sand"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_min           = -15,
	y_max           = 0,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = -316,
		octaves = 1,
		persist = 0.0
	},
})


-- Sand

minetest.register_ore({
	ore_type        = "blob",
	ore             = "default:sand",
	wherein         = {"default:stone", "default:sandstone",
		"default:desert_stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_min           = -31,
	y_max           = 0,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 2316,
		octaves = 1,
		persist = 0.0
	},
})

-- Dirt

minetest.register_ore({
	ore_type        = "blob",
	ore             = "default:dirt",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_min           = -31,
	y_max           = 31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 17676,
		octaves = 1,
		persist = 0.0
	},
	biomes = {"taiga", "snowy_grassland", "grassland", "coniferous_forest",
		"deciduous_forest", "savanna", "rainforest"}
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "mapgen:coarse_dirt",
	wherein         = {"default:stone"},
	clust_scarcity  = 8 * 8 * 8,
	clust_size      = 2,
	y_min           = -31000,
	y_max           = -31,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.4,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 17676,
		octaves = 1,
		persist = 0.0
	},
	biomes = {"taiga", "snowy_grassland", "grassland", "coniferous_forest",
		"deciduous_forest", "savanna", "rainforest"}
})

-- Gravel

minetest.register_ore({
	ore_type        = "blob",
	ore             = "default:gravel",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_min           = -31000,
	y_max           = 31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 766,
		octaves = 1,
		persist = 0.0
	},
})



--swamp water

minetest.register_ore({
	ore_type        = "blob",
	ore             = "mapgen:dirty_water_source",
	wherein         = {"mapgen:dirt_with_swampgrass"},
	clust_scarcity  = 9 * 9 * 9,
	clust_size      = 8,
	y_min           = 0,
	y_max           = 200,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 766,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "default:lava_source",
	wherein         = {"default:silver_sand"},
	clust_scarcity  = 9 * 9 * 9,
	clust_size      = 14,
	y_min           = 0,
	y_max           = 15,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.01,
		scale = 0.3,
		spread = {x = 250, y = 250, z = 250},
		seed = 766,
		octaves = 1,
		persist = 0.0
	},
})

--new stone

minetest.register_ore({
	ore_type        = "blob",
	ore             = "mapgen:limestone",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_min           = -31000,
	y_max           = 31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 766,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "mapgen:granite_brown",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_min           = -31000,
	y_max           = 31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 766,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "mapgen:granite",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_min           = -31000,
	y_max           = 31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 766,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "mapgen:dry_dirt",
	wherein         = {"mapgen:savanna_stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_min           = -31000,
	y_max           = 31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 766,
		octaves = 1,
		persist = 0.0
	},
})

--dirt with leaves

--[[minetest.register_ore({
	ore_type        = "blob",
	ore             = "mapgen:dirt_with_leafygrass",
	wherein         = {"default:dirt_with_grass"},
	clust_scarcity  = 5 * 5 * 5,
	clust_size      = 5,
	y_min           = -31000,
	y_max           = 31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 766,
		octaves = 1,
		persist = 0.0
	},
	biomes = {"bamboo_forest",}
})]]

--coarse dirt

minetest.register_ore({
	ore_type        = "blob",
	ore             = "mapgen:coarse_dirt",
	wherein         = {"mapgen:dirt_with_junglegrass"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_min           = -31000,
	y_max           = 31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 766,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "mapgen:coarse_dirt",
	wherein         = {"mapgen:dirt_with_leafygrass"},
	clust_scarcity  = 15 * 15 * 15,
	clust_size      = 3,
	y_min           = -31000,
	y_max           = 31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.55,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 766,
		octaves = 1,
		persist = 0.0
	},
	biomes = {"coniferous_forest_tall",}
})

-- Scatter ores

-- Coal

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_coal",
	wherein        = "default:stone",
	clust_scarcity = 8 * 8 * 8,
	clust_num_ores = 9,
	clust_size     = 3,
	y_min          = 1025,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mapgen:savanna_coal",
	wherein        = "mapgen:savanna_stone",
	clust_scarcity = 8 * 8 * 8,
	clust_num_ores = 9,
	clust_size     = 3,
	y_min          = -1025,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mapgen:savanna_iron",
	wherein        = "mapgen:savanna_stone",
	clust_scarcity = 7 * 7 * 7,
	clust_num_ores = 9,
	clust_size     = 3,
	y_min          = -1025,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_coal",
	wherein        = "default:stone",
	clust_scarcity = 8 * 8 * 8,
	clust_num_ores = 8,
	clust_size     = 3,
	y_min          = -31000,
	y_max          = 64,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_coal",
	wherein        = "default:stone",
	clust_scarcity = 24 * 24 * 24,
	clust_num_ores = 27,
	clust_size     = 6,
	y_min          = -31000,
	y_max          = 0,
})

--Tin

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mapgen:tin_ore",
	wherein        = "default:stone",
	clust_scarcity = 30 * 30 * 30,
	clust_num_ores = 12,
	clust_size     = 3,
	y_min          = -1000,
	y_max          = 1025,
})

-- Iron

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_iron",
	wherein        = "default:stone",
	clust_scarcity = 9 * 9 * 9,
	clust_num_ores = 12,
	clust_size     = 3,
	y_min          = 1025,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_iron",
	wherein        = "default:stone",
	clust_scarcity = 7 * 7 * 7,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min          = -31000,
	y_max          = 0,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_iron",
	wherein        = "default:stone",
	clust_scarcity = 24 * 24 * 24,
	clust_num_ores = 27,
	clust_size     = 6,
	y_min          = -31000,
	y_max          = -64,
})

-- Copper

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_copper",
	wherein        = "default:stone",
	clust_scarcity = 9 * 9 * 9,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min          = 1025,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_copper",
	wherein        = "default:stone",
	clust_scarcity = 12 * 12 * 12,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min          = -63,
	y_max          = -16,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_copper",
	wherein        = "default:stone",
	clust_scarcity = 9 * 9 * 9,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min          = -31000,
	y_max          = -64,
})

-- Gold

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_gold",
	wherein        = "default:stone",
	clust_scarcity = 13 * 13 * 13,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min          = 1025,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_gold",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 3,
	clust_size     = 2,
	y_min          = -255,
	y_max          = -64,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_gold",
	wherein        = "default:stone",
	clust_scarcity = 13 * 13 * 13,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min          = -31000,
	y_max          = -256,
})

-- Mese crystal
--[[
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_mese",
	wherein        = "default:stone",
	clust_scarcity = 14 * 14 * 14,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min          = 1025,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_mese",
	wherein        = "default:stone",
	clust_scarcity = 18 * 18 * 18,
	clust_num_ores = 3,
	clust_size     = 2,
	y_min          = -255,
	y_max          = -64,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_mese",
	wherein        = "default:stone",
	clust_scarcity = 14 * 14 * 14,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min          = -31000,
	y_max          = -256,
})
]]
-- Diamond

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_diamond",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min          = 1025,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_diamond",
	wherein        = "default:stone",
	clust_scarcity = 17 * 17 * 17,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min          = -255,
	y_max          = -128,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_diamond",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min          = -31000,
	y_max          = -256,
})

-- Mese block
--[[
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:mese",
	wherein        = "default:stone",
	clust_scarcity = 36 * 36 * 36,
	clust_num_ores = 3,
	clust_size     = 2,
	y_min          = 1025,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:mese",
	wherein        = "default:stone",
	clust_scarcity = 36 * 36 * 36,
	clust_num_ores = 3,
	clust_size     = 2,
	y_min          = -31000,
	y_max          = -1024,
})
]]

--fossils

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mapgen:stone_with_ammonite",
	wherein        = "default:stone",
	clust_scarcity = 24 * 24 * 24,
	clust_num_ores = 1,
	clust_size     = 1,
	y_min          = 625,
	y_max          = 31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mapgen:stone_with_bone",
	wherein        = "default:stone",
	clust_scarcity = 24 * 24 * 24,
	clust_num_ores = 1,
	clust_size     = 1,
	y_min          = 625,
	y_max          = 31000,
})
