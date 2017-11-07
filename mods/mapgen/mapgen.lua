
mapgen.path = minetest.get_modpath("mapgen")

dofile(mapgen.path.."/ores.lua")
dofile(mapgen.path.."/biomes.lua")

local seaplants = false


--
-- Register decorations
--


minetest.clear_registered_decorations()


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
	y_max = 31000,
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
	y_max = 31000,
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
	y_max = 31000,
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
	y_max = 31000,
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
	y_max = 31000,
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
	y_max = 31000,
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
	y_max = 31000,
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
	y_max = 31000,
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
	y_max = 31000,
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
	y_max = 31000,
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
	y_max = 31000,
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
	y_max = 31000,
	schematic = minetest.get_modpath("mapgen") .. "/schematics/rocks/desert_rock3.mts",
	flags = "place_center_x, place_center_z",
})


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

--~ if seaplants then
--~ minetest.register_on_generated(function(minp, maxp)
	--~ if maxp.y < -100 or maxp.y > 100 then
		--~ return
	--~ end
	--~ local dirt = minetest.find_nodes_in_area(minp, maxp,
		--~ {"default:sand"})
	--~ for n = 1, #dirt do
		--~ if math.random(1, 50) == 1 then
			--~ local pos = {x = dirt[n].x, y = dirt[n].y, z = dirt[n].z }
				--~ if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "default:water_source" and minetest.get_node({x=pos.x, y=pos.y+3, z=pos.z}).name ~= "air" then
					--~ if math.random(1,4) == 1 then
					--~ minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:red_coral"})
					--~ elseif math.random(1,4) == 1 then
					--~ minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:big_coral"})
					--~ elseif math.random(1,3) == 1 then
					--~ minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:anemone"})
					--~ elseif math.random(1,3) == 1 then
					--~ minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:blue_coral"})
					--~ else
					--~ minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:orange_coral"})
					--~ end
				--~ end
		--~ end
		--~ if math.random(1, 20) == 1 then
			--~ local pos = {x = dirt[n].x, y = dirt[n].y, z = dirt[n].z }
			--~ local num = math.random(1,2)
				--~ if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "default:water_source" and minetest.get_node({x=pos.x, y=pos.y+3, z=pos.z}).name ~= "air" then
					--~ if math.random(1,1) == 1 then
					--~ minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:kelp"..num})
						--~ if math.random(1,2) == 1 and minetest.get_node({x=pos.x, y=pos.y+4, z=pos.z}).name ~= "air" then
						--~ minetest.add_node({x=pos.x, y=pos.y+2, z=pos.z}, {name = "mapgen:kelp"..num})
							--~ if math.random(1,2) == 1 and minetest.get_node({x=pos.x, y=pos.y+5, z=pos.z}).name ~= "air" then
							--~ minetest.add_node({x=pos.x, y=pos.y+3, z=pos.z}, {name = "mapgen:kelp"..num})
								--~ if math.random(1,2) == 1 and minetest.get_node({x=pos.x, y=pos.y+6, z=pos.z}).name ~= "air" then
								--~ minetest.add_node({x=pos.x, y=pos.y+4, z=pos.z}, {name = "mapgen:kelp"..num})
									--~ if math.random(1,2) == 1 and minetest.get_node({x=pos.x, y=pos.y+7, z=pos.z}).name ~= "air" then
									--~ minetest.add_node({x=pos.x, y=pos.y+5, z=pos.z}, {name = "mapgen:kelp"..num})
									--~ end
								--~ end
							--~ end
						--~ end
					--~ end
				--~ end
		--~ end
	--~ end
--~ end)
--~ end

--~ minetest.register_on_generated(function(minp, maxp)
	--~ if maxp.y < -1000 or maxp.y > 10 then
		--~ return
	--~ end
	--~ local dirt = minetest.find_nodes_in_area(minp, maxp,
		--~ {"default:stone"})
	--~ for n = 1, #dirt do
		--~ if math.random(1, 50) == 1 then
			--~ local pos = {x = dirt[n].x, y = dirt[n].y, z = dirt[n].z }
				--~ if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "air" then
					--~ if math.random(1,2) == 1 then
					--~ minetest.add_node({x=pos.x, y=pos.y-1, z=pos.z}, {name = "mapgen:stalagtite"})
					--~ elseif math.random(1,2) == 1 then
					--~ minetest.add_node({x=pos.x, y=pos.y-1, z=pos.z}, {name = "mapgen:stalagtite1"})
					--~ elseif math.random(1,2) == 1 then
					--~ minetest.add_node({x=pos.x, y=pos.y-1, z=pos.z}, {name = "mapgen:stalagtite2"})
					--~ else
					--~ minetest.add_node({x=pos.x, y=pos.y-1, z=pos.z}, {name = "mapgen:stalagtite3"})
					--~ end
				--~ end
		--~ end
	--~ end
--~ end)

--~ minetest.register_on_generated(function(minp, maxp)
	--~ if maxp.y < -500 or maxp.y > 100 then
		--~ return
	--~ end
	--~ local dirt = minetest.find_nodes_in_area(minp, maxp,
		--~ {"default:stone"})
	--~ for n = 1, #dirt do
		--~ if math.random(1, 50) == 1 then
			--~ local pos = {x = dirt[n].x, y = dirt[n].y, z = dirt[n].z }
				--~ if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "air" then
					--~ local num = math.random(1,2)
					--~ minetest.add_node({x=pos.x, y=pos.y-1, z=pos.z}, {name = "mapgen:cavefern"..num})
				--~ end
		--~ end
	--~ end
--~ end)

--~ minetest.register_on_generated(function(minp, maxp)
	--~ if maxp.y < -1000 or maxp.y > 20 then
		--~ return
	--~ end
	--~ local dirt = minetest.find_nodes_in_area(minp, maxp,
		--~ {"default:stone"})
	--~ for n = 1, #dirt do
		--~ if math.random(1, 50) == 1 then
			--~ local pos = {x = dirt[n].x, y = dirt[n].y, z = dirt[n].z }
				--~ if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "air" and pos.y >= -100 then
					--~ if math.random(1,2) == 1 then
					--~ minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:stalagmite0"})
					--~ elseif math.random(1,2) == 1 then
					--~ minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:stalagmite1"})
					--~ else
					--~ minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:stalagmite2"})
					--~ end
				--~ end
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

dofile(mapgen.path.."/trees.lua")
dofile(mapgen.path.."/plants.lua")

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
