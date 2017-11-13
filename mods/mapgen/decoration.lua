function mapgen.register_decorations(upper_limit)

	dofile(mapgen.path.."/deco_tundra.lua")
	dofile(mapgen.path.."/deco_swamp.lua")

	local grass_offset_modificator = tonumber(minetest.settings:get("grass_offset_modificator") or 0) * 0.01

	-- Grasses

	local function register_grass_decoration(offset, scale, length)
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:dirt_with_grass", "default:sand", "mapgen:dirt_with_leafygrass"},
			sidelen = 16,
			--~ fill_ratio = 0.05,
			noise_params = {
				offset = offset + grass_offset_modificator,
				scale = scale,
				spread = {x = 200, y = 200, z = 200},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			biomes = {"grassland", "grassland_dunes", "deciduous_forest", "deciduous_forest2",
				"coniferous_forest", "coniferous_forest_dunes", "coniferous_forest_tall", "bamboo_forest",
				"grassland_hills"},
			y_min = 1,
			y_max = upper_limit,
			decoration = "default:grass_" .. length,
		})
	end

	register_grass_decoration(-0.03,  0.09,  5)
	register_grass_decoration(-0.015, 0.075, 4)
	register_grass_decoration(0,      0.06,  3)
	register_grass_decoration(0.015,  0.045, 2)
	register_grass_decoration(0.03,   0.03,  1)

-- Icesheet biome


	local function register_dry_grass_decoration(offset, scale, length)
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:dirt_with_dry_grass"},
			sidelen = 16,
			--~ fill_ratio = 0.05,
			noise_params = {
				offset = offset + grass_offset_modificator,
				scale = scale,
				spread = {x = 200, y = 200, z = 200},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			biomes = {"savanna"},
			y_min = 1,
			y_max = upper_limit,
			decoration = "default:dry_grass_" .. length,
		})
	end

	local function register_jungle_grass_decoration(offset, scale, length)
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"mapgen:dirt_with_junglegrass", "default:dirt"},
			sidelen = 16,
			fill_ratio = 0.05,
			noise_params = {
				offset = offset + grass_offset_modificator,
				scale = scale,
				spread = {x = 200, y = 200, z = 200},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			biomes = {"rainforest", "rainforest_swamp"},
			y_min = 1,
			y_max = upper_limit,
			decoration = "mapgen:jungle_grass_" .. length,
		})
	end

	local function register_snow_grass_decoration(offset, scale, length)
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:dirt_with_snow",},
			sidelen = 16,
			noise_params = {
				offset = offset + grass_offset_modificator / 5,
				scale = scale,
				spread = {x = 200, y = 200, z = 200},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			biomes = {"taiga", "snowy_grassland",},
			y_min = 1,
			y_max = upper_limit,
			decoration = "mapgen:snow_grass_" .. length,
		})
	end

	local function register_swamp_grass_decoration(offset, scale, length)
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"mapgen:dirt_with_swampgrass", "default:dirt"},
			sidelen = 16,
			noise_params = {
				offset = offset + grass_offset_modificator,
				scale = scale,
				spread = {x = 200, y = 200, z = 200},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			biomes = {"rainforest_swamp", "rainforest", "swamp"},
			y_min = 0,
			y_max = upper_limit,
			decoration = "mapgen:swamp_grass_" .. length,
		})
	end



	--Jungle grasses

	register_jungle_grass_decoration(-0.03,  0.09,  5)
	register_jungle_grass_decoration(-0.015, 0.075, 4)
	register_jungle_grass_decoration(0,      0.06,  3)
	register_jungle_grass_decoration(0.015,  0.045, 2)
	register_jungle_grass_decoration(0.03,   0.03,  1)

	--Snow grasses

	register_snow_grass_decoration(-0.03,  0.09,  5)
	register_snow_grass_decoration(-0.015, 0.075, 4)
	register_snow_grass_decoration(0,      0.06,  3)
	register_snow_grass_decoration(0.015,  0.045, 2)
	register_snow_grass_decoration(0.03,   0.03,  1)

	--Swamp grasses


	register_swamp_grass_decoration(-0.03,  0.09,  5)
	register_swamp_grass_decoration(-0.015, 0.075, 4)
	register_swamp_grass_decoration(0,      0.06,  3)
	register_swamp_grass_decoration(0.015,  0.045, 2)
	register_swamp_grass_decoration(0.03,   0.03,  1)

	-- Dry grasses

	register_dry_grass_decoration(0.01, 0.05,  5)
	register_dry_grass_decoration(0.03, 0.03,  4)
	register_dry_grass_decoration(0.05, 0.01,  3)
	register_dry_grass_decoration(0.07, -0.01, 2)
	register_dry_grass_decoration(0.09, -0.03, 1)

	-- Junglegrass

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"mapgen:dirt_with_junglegrass"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"rainforest"},
		y_min = 1,
		y_max = upper_limit,
		decoration = "default:junglegrass",
	})

	--oats
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 6,
		fill_ratio = 0.01,
		biomes = {"savanna"},
		decoration = "mapgen:wild_oat_dry",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 6,
		fill_ratio = 0.01,
		biomes = {"grassland", "deciduous_forest", "deciduous_forest2", "bamboo_forest"},
		decoration = "mapgen:wild_oat",
		height = 1,
	})

	--dead grass
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 6,
		fill_ratio = 0.002,
		biomes = {"savanna"},
		decoration = "mapgen:dead_grass_1",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 6,
		fill_ratio = 0.002,
		biomes = {"savanna"},
		decoration = "mapgen:dead_grass_2",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass", "default:desert_sand"},
		sidelen = 6,
		fill_ratio = 0.002,
		biomes = {"savanna", "desert"},
		decoration = "mapgen:dead_grass_3",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass", "default:desert_sand"},
		sidelen = 6,
		fill_ratio = 0.002,
		biomes = {"savanna", "desert"},
		decoration = "mapgen:dead_grass_4",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass", "default:desert_sand"},
		sidelen = 6,
		fill_ratio = 0.002,
		biomes = {"savanna", "desert"},
		decoration = "mapgen:dead_grass_5",
		height = 1,
	})


		-- Large cactus
	--[[
		minetest.register_decoration({
			deco_type = "schematic",
			place_on = {"default:desert_sand"},
			sidelen = 16,
			noise_params = {
				offset = -0.0003,
				scale = 0.0009,
				spread = {x = 200, y = 200, z = 200},
				seed = 230,
				octaves = 3,
				persist = 0.6
			},
			biomes = {"desert"},
			y_min = 5,
			y_max = upper_limit,
			schematic = minetest.get_modpath("default") .. "/schematics/large_cactus.mts",
			flags = "place_center_x",
			rotation = "random",
		})]]

	-- Cactus

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_min = 5,
		y_max = upper_limit,
		decoration = "default:cactus",
		height = 2,
		height_max = 5,
	})

	-- Papyrus

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 200, y = 200, z = 200},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"savanna_shore"},
		y_min = 0,
		y_max = 0,
		schematic = minetest.get_modpath("default") .. "/schematics/papyrus.mts",
	})

	--tall grass

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "default:dirt_with_grass", "mapgen:dirt_with_leafygrass",
		sidelen = 16,
		fill_ratio = 0.01,
		biomes = {"grassland", "deciduous_forest", "coniferous_forest_tall"},
		decoration = "mapgen:tallgrass",
		height = 1,
	})

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

	--pineapple
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_junglegrass", "default:dirt_with_grass"},
		sidelen = 16,
		fill_ratio = 0.01,
		biomes = {"rainforest", "sandstone_desert"},
		decoration = "mapgen:pineapple_plant",
		height = 1,
	})

	--shrubs

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "mapgen:dirt_with_leafygrass",
		sidelen = 16,
		fill_ratio = 0.05,
		biomes = {"coniferous_forest_tall",},
		decoration = "mapgen:shrub",
		height = 1,
	})

	--purple allium


	minetest.register_decoration({
		deco_type = "simple",
		place_on = "mapgen:dirt_with_leafygrass",
		sidelen = 16,
		fill_ratio = 0.02,
		biomes = {"coniferous_forest_tall",},
		decoration = "mapgen:purple_allium",
		height = 1,
	})

	--deciduous_forest2 stuff

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "default:dirt_with_grass",
		sidelen = 16,
		fill_ratio = 0.05,
		biomes = {"deciduous_forest2",},
		decoration = "mapgen:lantana",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "default:dirt_with_grass",
		sidelen = 16,
		fill_ratio = 0.05,
		biomes = {"deciduous_forest2",},
		decoration = "mapgen:creeper",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "default:dirt_with_grass",
		sidelen = 16,
		fill_ratio = 0.05,
		biomes = {"deciduous_forest2",},
		decoration = "mapgen:shrub2",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "default:dirt_with_grass",
		sidelen = 16,
		fill_ratio = 0.05,
		biomes = {"deciduous_forest2",},
		decoration = "mapgen:bush",
		height = 1,
	})

	--ferns

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "mapgen:dirt_with_leafygrass",
		sidelen = 16,
		fill_ratio = 0.02,
		biomes = {"coniferous_forest_tall",},
		decoration = "mapgen:fern",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "mapgen:dirt_with_junglegrass",
		sidelen = 16,
		fill_ratio = 0.02,
		biomes = {"rainforest",},
		decoration = "mapgen:fern",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "mapgen:dirt_with_junglegrass",
		sidelen = 16,
		fill_ratio = 0.02,
		biomes = {"rainforest",},
		decoration = "mapgen:fern2",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "mapgen:dirt_with_junglegrass",
		sidelen = 16,
		fill_ratio = 0.01,
		biomes = {"rainforest",},
		decoration = "mapgen:dicksonia",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "mapgen:dirt_with_junglegrass",
		sidelen = 16,
		fill_ratio = 0.02,
		biomes = {"rainforest",},
		decoration = "mapgen:bananaplant",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "mapgen:dirt_with_junglegrass",
		sidelen = 16,
		fill_ratio = 0.02,
		biomes = {"rainforest",},
		decoration = "mapgen:jungletree",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "mapgen:dirt_with_junglegrass",
		sidelen = 16,
		fill_ratio = 0.02,
		biomes = {"rainforest",},
		decoration = "mapgen:flame_lily",
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
		place_on = "mapgen:dirt_with_junglegrass",
		sidelen = 16,
		fill_ratio = 0.05,
		biomes = {"rainforest",},
		decoration = "mapgen:moss",
		height = 1,
	})

	--Aloe Vera

	--~ minetest.register_decoration({
		--~ deco_type = "simple",
		--~ place_on = "default:desert_sand",
		--~ sidelen = 16,
		--~ fill_ratio = 0.02,
		--~ biomes = {"swamp"},
		--~ decoration = "mapgen:aloe_vera",
		--~ height = 1,
	--~ })

	-- Dry shrub

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand",
			"default:sand", "default:silver_sand"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "sandstone_desert", "cold_desert"},
		y_min = 2,
		y_max = upper_limit,
		decoration = "default:dry_shrub",
	})

	--small cacti

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand",
			"default:sand",},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "sandstone_desert",},
		y_min = 2,
		y_max = upper_limit,
		decoration = "mapgen:small_cactus",
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand",
			"default:sand",},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "sandstone_desert",},
		y_min = 2,
		y_max = upper_limit,
		decoration = "mapgen:small_cactus1",
	})

	-- Coral reef

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:sand"},
		noise_params = {
			offset = -0.1,
			scale = 0.1,
			spread = {x = 200, y = 200, z = 200},
			seed = 7013,
			octaves = 3,
			persist = 1,
		},
		biomes = {
			"desert_ocean",
			"savanna_ocean",
			"rainforest_ocean",
		},
		y_min = -8,
		y_max = -2,
		schematic = minetest.get_modpath("default") .. "/schematics/corals.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})


	--bamboo

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "default:dirt_with_grass",
		sidelen = 16,
		noise_params = {
				offset = 0.005,
				scale = 0.01,
				spread = {x = 250, y = 250, z = 250},
				seed = 2,
				octaves = 3,
				persist = 0.66
		},
		fill_ratio = 0.05,
		biomes = {"bamboo_forest",},
		decoration = "mapgen:bamboo_small",
		height = 3,
	})

	minetest.register_decoration({
		deco_type = "simple",
		place_on = "default:dirt_with_grass", "mapgen:dirt_with_leafygrass",
		sidelen = 16,
		noise_params = {
				offset = 0.005,
				scale = 0.01,
				spread = {x = 250, y = 250, z = 250},
				seed = 2,
				octaves = 3,
				persist = 0.66
		},
		biomes = {"bamboo_forest",},
		decoration = "mapgen:bamboo_grass",
		height = 1,
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.016,
			scale = 0.022,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"bamboo_forest",},
		y_min = 1,
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/bamboo1.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.016,
			scale = 0.022,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"bamboo_forest",},
		y_min = 1,
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/bamboo2.mts",
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
		biomes = {"bamboo_forest",},
		y_min = 1,
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/bamboo5.mts",
		flags = "place_center_x, place_center_z",
	})

	--stone

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0005,
			scale = 0.0005,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"coniferous_forest_tall"},
		y_min = 1,
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/rocks/savanna_rock1.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0005,
			scale = 0.0005,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"coniferous_forest_tall"},
		y_min = 1,
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/rocks/savanna_rock2.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0005,
			scale = 0.0005,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"coniferous_forest_tall"},
		y_min = 1,
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/rocks/savanna_rock3.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0005,
			scale = 0.0005,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest2", "grassland"},
		y_min = 1,
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/rocks/rock1.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0005,
			scale = 0.0005,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest2", "grassland"},
		y_min = 1,
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/rocks/rock2.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.0005,
			scale = 0.0005,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest2", "grassland"},
		y_min = 1,
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/rocks/rock3.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = 0.0005,
			scale = 0.0005,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"desert",},
		y_min = 1,
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/rocks/desert_rock1.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = 0.0005,
			scale = 0.0005,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"desert",},
		y_min = 1,
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/rocks/desert_rock2.mts",
		flags = "place_center_x, place_center_z",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = 0.0005,
			scale = 0.0005,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"desert",},
		y_min = 1,
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen") .. "/schematics/rocks/desert_rock3.mts",
		flags = "place_center_x, place_center_z",
	})


	-- Kelp

	-- only supported by Minetest 0.5
	if mapgen.version > 4 then

		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:sand"},
			place_offset_y = -1,
			sidelen = 16,
			noise_params = {
				offset = -0.04,
				scale = 0.1,
				spread = {x = 200, y = 200, z = 200},
				seed = 87112,
				octaves = 3,
				persist = 0.7
			},
			biomes = {
				"taiga_ocean",
				"snowy_grassland_ocean",
				"grassland_ocean",
				"coniferous_forest_ocean",
				"deciduous_forest_ocean",
				"sandstone_desert_ocean",
				"cold_desert_ocean"},
			y_min = -10,
			y_max = -5,
			flags = "force_placement",
			decoration = "default:sand_with_kelp",
			param2 = 48,
			param2_max = 96,
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:sand"},
			place_offset_y = -1,
			sidelen = 16,
			noise_params = {
				offset = -0.04,
				scale = 0.1,
				spread = {x = 200, y = 200, z = 200},
				seed = 938475,
				octaves = 3,
				persist = 0.7
			},
			biomes = {
				"taiga_ocean",
				"snowy_grassland_ocean",
				"grassland_ocean",
				"coniferous_forest_ocean",
				"deciduous_forest_ocean",
				"sandstone_desert_ocean",
				"cold_desert_ocean"},
			y_min = -10,
			y_max = -5,
			flags = "force_placement",
			decoration = "default:sand_with_kelp2",
			param2 = 48,
			param2_max = 96,
		})


		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:sand"},
			place_offset_y = -1,
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.1,
				spread = {x = 200, y = 200, z = 200},
				seed = 23454,
				octaves = 5,
				persist = 0.9
			},
			biomes = {
				"taiga_ocean",
				"snowy_grassland_ocean",
				"grassland_ocean",
				"coniferous_forest_ocean",
				"deciduous_forest_ocean",
				"sandstone_desert_ocean",
				"cold_desert_ocean"},
			y_min = -13,
			y_max = 0,
			flags = "force_placement",
			decoration = "mapgen:sand_with_sea_grass",
			param2 = 8,
			param2_max = 16,
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:dirt"},
			place_offset_y = -1,
			sidelen = 16,
			noise_params = {
				offset = 0.05,
				scale = 0.1,
				spread = {x = 200, y = 200, z = 200},
				seed = 23443,
				octaves = 5,
				persist = 0.9
			},
			biomes = {
				"taiga_ocean",
				"snowy_grassland_ocean",
				"grassland_ocean",
				"coniferous_forest_ocean",
				"deciduous_forest_ocean",
				"sandstone_desert_ocean",
				"cold_desert_ocean",
				"bamboo_ocean",
				"deciduous_forest_shore",
				"deciduous_forest2_shore",
				"deciduous_forest2_ocean",
				"savanna_shore",
				--~ "rainforest_swamp",
				},
			y_min = 0,
			y_max = 0,
			flags = "force_placement",
			decoration = "mapgen:cattail",
			param2 = 16,
			param2_max = 16,
		})


		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:sand"},
			place_offset_y = -1,
			sidelen = 16,
			noise_params = {
				offset = -0.04,
				scale = 0.1,
				spread = {x = 100, y = 100, z = 100},
				seed = 7013,
				octaves = 3,
				persist = 1,
			},
			biomes = {
				"desert_ocean",
				"savanna_ocean",
				"rainforest_ocean",
			},
			y_min = -12,
			y_max = -2,
			flags = "force_placement",
			decoration = "mapgen:big_coral",
			param2 = 16,
			param2_max = 16,
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:sand"},
			place_offset_y = -1,
			sidelen = 16,
			noise_params = {
				offset = -0.04,
				scale = 0.15,
				spread = {x = 100, y = 100, z = 100},
				seed = 7013,
				octaves = 3,
				persist = 1,
			},
			biomes = {
				"desert_ocean",
				"savanna_ocean",
				"rainforest_ocean",
			},
			y_min = -12,
			y_max = -2,

			flags = "force_placement",
			decoration = "mapgen:red_coral",
			param2 = 16,
			param2_max = 16,
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:sand"},
			place_offset_y = -1,
			sidelen = 16,
			noise_params = {
				offset = -0.04,
				scale = 0.15,
				spread = {x = 100, y = 100, z = 100},
				seed = 7013,
				octaves = 3,
				persist = 1,
			},
			biomes = {
				"desert_ocean",
				"savanna_ocean",
				"rainforest_ocean",
			},
			y_min = -12,
			y_max = -2,

			flags = "force_placement",
			decoration = "mapgen:orange_coral",
			param2 = 16,
			param2_max = 16,
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:sand"},
			place_offset_y = -1,
			sidelen = 16,
			noise_params = {
				offset = -0.04,
				scale = 0.15,
				spread = {x = 100, y = 100, z = 100},
				seed = 7013,
				octaves = 3,
				persist = 1,
			},
			biomes = {
				"desert_ocean",
				"savanna_ocean",
				"rainforest_ocean",
			},
			y_min = -12,
			y_max = -2,

			flags = "force_placement",
			decoration = "mapgen:blue_coral",
			param2 = 16,
			param2_max = 16,
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:sand"},
			place_offset_y = -1,
			sidelen = 16,
			noise_params = {
				offset = -0.04,
				scale = 0.15,
				spread = {x = 100, y = 100, z = 100},
				seed = 7013,
				octaves = 3,
				persist = 1,
			},
			biomes = {
				"desert_ocean",
				"savanna_ocean",
				"rainforest_ocean",
			},
			y_min = -12,
			y_max = -2,

			flags = "force_placement",
			decoration = "mapgen:anemone",
			param2 = 16,
			param2_max = 16,
		})


		-- Underground

		minetest.register_decoration({
			deco_type = "simple",
			place_on = "default:stone",
			sidelen = 8,
			--~ fill_ratio = 5,
			noise_params = {
				offset = 0.02,
				scale = 0.01,
				spread = {x = 200, y = 200, z = 200},
				seed = 35243,
				octaves = 5,
				persist = 0.9
			},
			biomes = {"underground",
						"taiga_ocean",
						"snowy_grassland_ocean",
						"grassland_ocean",
						"coniferous_forest_ocean",
						"deciduous_forest_ocean",
						"sandstone_desert_ocean",
						"cold_desert_ocean",
						"bamboo_ocean",
						"deciduous_forest_shore",
						"deciduous_forest2_shore",
						"deciduous_forest2_ocean",
					},
			y_min = -31000,
			y_max = upper_limit,
			decoration = "mapgen:stalagtite",
			flags = "all_ceilings",
		})


		minetest.register_decoration({
			deco_type = "simple",
			place_on = "default:stone",
			sidelen = 8,
			--~ fill_ratio = 5,
			noise_params = {
				offset = 0.02,
				scale = 0.01,
				spread = {x = 200, y = 200, z = 200},
				seed = 46354,
				octaves = 5,
				persist = 0.9
			},
			biomes = {"underground",
						"taiga_ocean",
						"snowy_grassland_ocean",
						"grassland_ocean",
						"coniferous_forest_ocean",
						"deciduous_forest_ocean",
						"sandstone_desert_ocean",
						"cold_desert_ocean",
						"bamboo_ocean",
						"deciduous_forest_shore",
						"deciduous_forest2_shore",
						"deciduous_forest2_ocean",
					},
			y_min = -31000,
			y_max = upper_limit,
			decoration = "mapgen:stalagtite1",
			flags = "all_ceilings",
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = "default:stone",
			sidelen = 8,
			--~ fill_ratio = 5,
			noise_params = {
				offset = 0.02,
				scale = 0.01,
				spread = {x = 200, y = 200, z = 200},
				seed = 67898,
				octaves = 5,
				persist = 0.9
			},
			biomes = {"underground",
						"taiga_ocean",
						"snowy_grassland_ocean",
						"grassland_ocean",
						"coniferous_forest_ocean",
						"deciduous_forest_ocean",
						"sandstone_desert_ocean",
						"cold_desert_ocean",
						"bamboo_ocean",
						"deciduous_forest_shore",
						"deciduous_forest2_shore",
						"deciduous_forest2_ocean",
					},
			y_min = -31000,
			y_max = upper_limit,
			decoration = "mapgen:stalagtite2",
			flags = "all_ceilings",
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = "default:stone",
			sidelen = 8,
			--~ fill_ratio = 5,
			noise_params = {
				offset = 0.02,
				scale = 0.01,
				spread = {x = 200, y = 200, z = 200},
				seed = 8967,
				octaves = 5,
				persist = 0.9
			},
			biomes = {"underground",
						"taiga_ocean",
						"snowy_grassland_ocean",
						"grassland_ocean",
						"coniferous_forest_ocean",
						"deciduous_forest_ocean",
						"sandstone_desert_ocean",
						"cold_desert_ocean",
						"bamboo_ocean",
						"deciduous_forest_shore",
						"deciduous_forest2_shore",
						"deciduous_forest2_ocean",
					},
			y_min = -31000,
			y_max = upper_limit,
			decoration = "mapgen:stalagtite3",
			flags = "all_ceilings",
		})


		minetest.register_decoration({
			deco_type = "simple",
			place_on = "default:stone",
			sidelen = 8,
			--~ fill_ratio = 5,
			noise_params = {
				offset = 0.02,
				scale = 0.01,
				spread = {x = 200, y = 200, z = 200},
				seed = 789,
				octaves = 5,
				persist = 0.9
			},
			biomes = {"underground",
						"taiga_ocean",
						"snowy_grassland_ocean",
						"grassland_ocean",
						"coniferous_forest_ocean",
						"deciduous_forest_ocean",
						"sandstone_desert_ocean",
						"cold_desert_ocean",
						"bamboo_ocean",
						"deciduous_forest_shore",
						"deciduous_forest2_shore",
						"deciduous_forest2_ocean",
					},
			y_min = -31000,
			y_max = upper_limit,
			decoration = "mapgen:stalagmite0",
			flags = "all_floors",
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = "default:stone",
			sidelen = 8,
			--~ fill_ratio = 5,
			noise_params = {
				offset = 0.02,
				scale = 0.01,
				spread = {x = 200, y = 200, z = 200},
				seed = 9876,
				octaves = 5,
				persist = 0.9
			},
			biomes = {"underground",
						"taiga_ocean",
						"snowy_grassland_ocean",
						"grassland_ocean",
						"coniferous_forest_ocean",
						"deciduous_forest_ocean",
						"sandstone_desert_ocean",
						"cold_desert_ocean",
						"bamboo_ocean",
						"deciduous_forest_shore",
						"deciduous_forest2_shore",
						"deciduous_forest2_ocean",
					},
			y_min = -31000,
			y_max = upper_limit,
			decoration = "mapgen:stalagmite1",
			flags = "all_floors",
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = "default:stone",
			sidelen = 8,
			--~ fill_ratio = 5,
			noise_params = {
				offset = 0.02,
				scale = 0.01,
				spread = {x = 200, y = 200, z = 200},
				seed = 6789,
				octaves = 5,
				persist = 0.9
			},
			biomes = {"underground",
						"taiga_ocean",
						"snowy_grassland_ocean",
						"grassland_ocean",
						"coniferous_forest_ocean",
						"deciduous_forest_ocean",
						"sandstone_desert_ocean",
						"cold_desert_ocean",
						"bamboo_ocean",
						"deciduous_forest_shore",
						"deciduous_forest2_shore",
						"deciduous_forest2_ocean",
					},
			y_min = -31000,
			y_max = upper_limit,
			decoration = "mapgen:stalagmite2",
			flags = "all_floors",
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = "default:stone",
			sidelen = 8,
			--~ fill_ratio = 5,
			noise_params = {
				offset = 0.02,
				scale = 0.01,
				spread = {x = 200, y = 200, z = 200},
				seed = 98,
				octaves = 5,
				persist = 0.9
			},
			biomes = {"underground",
						"taiga_ocean",
						"snowy_grassland_ocean",
						"grassland_ocean",
						"coniferous_forest_ocean",
						"deciduous_forest_ocean",
						"sandstone_desert_ocean",
						"cold_desert_ocean",
						"bamboo_ocean",
						"deciduous_forest_shore",
						"deciduous_forest2_shore",
						"deciduous_forest2_ocean",
					},
			y_min = -31000,
			y_max = upper_limit,
			decoration = "mapgen:stalagmite3",
			flags = "all_floors",
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = "default:stone",
			sidelen = 8,
			--~ fill_ratio = 5,
			noise_params = {
				offset = 0.02,
				scale = 0.01,
				spread = {x = 200, y = 200, z = 200},
				seed = 789,
				octaves = 5,
				persist = 0.9
			},
			biomes = {"underground",
						"taiga_ocean",
						"snowy_grassland_ocean",
						"grassland_ocean",
						"coniferous_forest_ocean",
						"deciduous_forest_ocean",
						"sandstone_desert_ocean",
						"cold_desert_ocean",
						"bamboo_ocean",
						"deciduous_forest_shore",
						"deciduous_forest2_shore",
						"deciduous_forest2_ocean",
					},
			y_min = -31000,
			y_max = upper_limit,
			decoration = "mapgen:cavefern1",
			flags = "all_ceilings",
		})

		minetest.register_decoration({
			deco_type = "simple",
			place_on = "default:stone",
			sidelen = 8,
			--~ fill_ratio = 5,
			noise_params = {
				offset = 0.02,
				scale = 0.01,
				spread = {x = 200, y = 200, z = 200},
				seed = 51235,
				octaves = 5,
				persist = 0.9
			},
			biomes = {"underground",
						"taiga_ocean",
						"snowy_grassland_ocean",
						"grassland_ocean",
						"coniferous_forest_ocean",
						"deciduous_forest_ocean",
						"sandstone_desert_ocean",
						"cold_desert_ocean",
						"bamboo_ocean",
						"deciduous_forest_shore",
						"deciduous_forest2_shore",
						"deciduous_forest2_ocean",
					},
			y_min = -31000,
			y_max = upper_limit,
			decoration = "mapgen:cavefern2",
			flags = "all_ceilings",
		})

		--~ minetest.register_decoration({
			--~ deco_type = "simple",
			--~ place_on = "default:stone",
			--~ sidelen = 8,
			--~ fill_ratio = 5,
			--~ noise_params = {
				--~ offset = 0.2,
				--~ scale = 0.01,
				--~ spread = {x = 200, y = 200, z = 200},
				--~ seed = 325345,
				--~ octaves = 5,
				--~ persist = 0.9
			--~ },
			--~ biomes = {"underground",
						--~ "taiga_ocean",
						--~ "snowy_grassland_ocean",
						--~ "grassland_ocean",
						--~ "coniferous_forest_ocean",
						--~ "deciduous_forest_ocean",
						--~ "sandstone_desert_ocean",
						--~ "cold_desert_ocean",
						--~ "bamboo_ocean",
						--~ "deciduous_forest_shore",
						--~ "deciduous_forest2_shore",
						--~ "deciduous_forest2_ocean",
					--~ },
			--~ y_min = -31000,
			--~ y_max = upper_limit,
			--~ decoration = "default:torch",
			--~ flags = "all_floors, all_ceilings",
		--~ })
	end
--~ end

--~ function mapgen.register_trees(upper_limit)
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		biomes = {"deciduous_forest", "grassland_hills"},
		y_min = 1,
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_min = 1,
		y_max = upper_limit,
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
		y_min = 1,
		y_max = upper_limit,
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
		y_min = 1,
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
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
		y_max = upper_limit,
		schematic = minetest.get_modpath("mapgen").."/schematics/palmtree.mts",
		flags = "place_center_x, place_center_z",
	})
end

