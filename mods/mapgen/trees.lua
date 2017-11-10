
--deciduous_forest trees

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
	biomes = {"deciduous_forest2"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/deciduous_tree1.mts",
	flags = "place_center_x, place_center_z",
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
	biomes = {"deciduous_forest2"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/deciduous_tree2.mts",
	flags = "place_center_x, place_center_z",
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
	biomes = {"deciduous_forest2"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/deciduous_tree3.mts",
	flags = "place_center_x, place_center_z",
})


-- Apple tree and log

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.015,
		scale = 0.005,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"deciduous_forest",},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/oak.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.025,
		scale = 0.010,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"deciduous_forest",},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/oak_s.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.026,
		scale = 0.012,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"deciduous_forest2"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("default") .. "/schematics/apple_tree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0018,
		scale = 0.0011,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"deciduous_forest"},
	y_min = 1,
	y_max = 31000,
	schematic = {
		size = {x = 3, y = 3, z = 1},
		data = {
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "default:tree", param2 = 12, prob = 191},
			{name = "default:tree", param2 = 12},
			{name = "default:tree", param2 = 12, prob = 127},
			{name = "air", prob = 0},
			{name = "flowers:mushroom_brown", prob = 63},
			{name = "air", prob = 0},
		},
	},
	flags = "place_center_x",
	rotation = "random",
})

-- Jungle tree and log

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"mapgen:dirt_with_junglegrass", "default:dirt"},
	sidelen = 80,
	fill_ratio = 0.03,
	biomes = {"rainforest",},
	y_min = -1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/jungletree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"mapgen:dirt_with_junglegrass", "default:dirt"},
	sidelen = 80,
	fill_ratio = 0.03,
	biomes = {"rainforest_swamp"},
	y_min = -1,
	y_max = 31000,
	schematic = minetest.get_modpath("default") .. "/schematics/jungle_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"mapgen:dirt_with_junglegrass", "default:dirt"},
	sidelen = 80,
	fill_ratio = 0.03,
	biomes = {"rainforest",},
	y_min = -1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/junglepalm.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"mapgen:dirt_with_junglegrass", "default:dirt"},
	sidelen = 80,
	fill_ratio = 0.005,
	biomes = {"rainforest", "rainforest_swamp"},
	y_min = 1,
	y_max = 31000,
	schematic = {
		size = {x = 3, y = 3, z = 1},
		data = {
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "default:jungletree", param2 = 12, prob = 191},
			{name = "default:jungletree", param2 = 12},
			{name = "default:jungletree", param2 = 12, prob = 127},
			{name = "air", prob = 0},
			{name = "flowers:mushroom_brown", prob = 127},
			{name = "air", prob = 0},
		},
	},
	flags = "place_center_x",
	rotation = "random",
})

-- Taiga and temperate coniferous forest pine tree and log

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_snow", "default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.036,
		scale = 0.022,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"taiga", "coniferous_forest"},
	y_min = 2,
	y_max = 31000,
	schematic = minetest.get_modpath("default") .. "/schematics/pine_tree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"mapgen:dirt_with_leafygrass"},
	sidelen = 16,
	noise_params = {
		offset = 0.006,
		scale = 0.002,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"coniferous_forest_tall"},
	y_min = 2,
	y_max = 31000,
	schematic = minetest.get_modpath("default") .. "/schematics/pine_tree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"mapgen:dirt_with_leafygrass", "mapgen:coarse_dirt"},
	sidelen = 16,
	noise_params = {
		offset = 0.036,
		scale = 0.022,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"coniferous_forest_tall"},
	y_min = -50,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/pine.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_snow", "default:dirt_with_grass", "mapgen:dirt_with_leafygrass"},
	sidelen = 80,
	noise_params = {
		offset = 0.0018,
		scale = 0.0011,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"taiga", "coniferous_forest", "coniferous_forest_tall"},
	y_min = 1,
	y_max = 31000,
	schematic = {
		size = {x = 3, y = 3, z = 1},
		data = {
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "default:pine_tree", param2 = 12, prob = 191},
			{name = "default:pine_tree", param2 = 12},
			{name = "default:pine_tree", param2 = 12, prob = 127},
			{name = "air", prob = 0},
			{name = "flowers:mushroom_red", prob = 63},
			{name = "air", prob = 0},
		},
	},
	flags = "place_center_x",
	rotation = "random",
})

--yellow ipe

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.002,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"deciduous_forest2"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/ipe.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

--baobab tree

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.05,
		scale = 0.001,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"savanna"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/baobab.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.001,
		scale = 0.001,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"savanna"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/baobab1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.001,
		scale = 0.001,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"savanna"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/baobab2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})


-- Acacia tree and log

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.002,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"savanna"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("default") .. "/schematics/acacia_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.001,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"savanna"},
	y_min = 1,
	y_max = 31000,
	schematic = {
		size = {x = 3, y = 2, z = 1},
		data = {
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "default:acacia_tree", param2 = 12, prob = 191},
			{name = "default:acacia_tree", param2 = 12},
			{name = "default:acacia_tree", param2 = 12, prob = 127},
		},
	},
	flags = "place_center_x",
	rotation = "random",
})

--Willow tree
--[[
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"mapgen:dirt_with_swampgrass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0,
		scale = -0.015,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"swamp"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/willow.mts",
	flags = "place_center_x, place_center_z",
})
]]

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
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/willow2.mts",
	flags = "place_center_x, place_center_z",
})

-- Aspen tree and log

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0,
		scale = -0.015,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"deciduous_forest"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("default") .. "/schematics/aspen_tree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0,
		scale = -0.0008,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"deciduous_forest"},
	y_min = 1,
	y_max = 31000,
	schematic = {
		size = {x = 3, y = 3, z = 1},
		data = {
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "default:aspen_tree", param2 = 12},
			{name = "default:aspen_tree", param2 = 12},
			{name = "default:aspen_tree", param2 = 12, prob = 127},
			{name = "flowers:mushroom_red", prob = 63},
			{name = "flowers:mushroom_brown", prob = 63},
			{name = "air", prob = 0},
		},
	},
	flags = "place_center_x",
	rotation = "random",
})


-- Bush

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass", "default:dirt_with_snow"},
	sidelen = 16,
	noise_params = {
		offset = -0.004,
		scale = 0.01,
		spread = {x = 100, y = 100, z = 100},
		seed = 137,
		octaves = 3,
		persist = 0.7,
	},
	biomes = {"snowy_grassland", "grassland", "deciduous_forest", "bamboo_forest", "coniferous_forest_tall"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("default") .. "/schematics/bush.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass",},
	sidelen = 16,
	noise_params = {
		offset = 0.01,
		scale = 0.015,
		spread = {x = 100, y = 100, z = 100},
		seed = 137,
		octaves = 3,
		persist = 0.7,
	},
	biomes = {"bamboo_forest",},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("default") .. "/schematics/bush.mts",
	flags = "place_center_x, place_center_z",
})

-- Acacia bush

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.004,
		scale = 0.01,
		spread = {x = 100, y = 100, z = 100},
		seed = 90155,
		octaves = 3,
		persist = 0.7,
	},
	biomes = {"savanna"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("default") .. "/schematics/acacia_bush.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:sand",},
	sidelen = 16,
	noise_params = {
		offset = 0.002,
		scale = 0.001,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"desert", "sandstone_desert"},
	y_min = 1,
	y_max = 40,
	schematic = minetest.get_modpath("mapgen").."/schematics/palmtree.mts",
	replacements = {["mapgen:palm_leaves_coconut"] = "mapgen:palm_leaves"},
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"mapgen:dirt_with_junglegrass", "default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.002,
		scale = 0.001,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"rainforest"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen").."/schematics/palmtree.mts",
	flags = "place_center_x, place_center_z",
})
