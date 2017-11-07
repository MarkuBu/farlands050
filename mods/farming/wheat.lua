
-- WHEAT

farming.register_plant("farming:wheat", {
	description = "Wheat Seed",
	paramtype2 = "meshoptions",
	inventory_image = "farming_wheat_seed.png",
	steps = 9,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {flammable = 4},
	--~ place_param2 = 3,
})

minetest.register_craftitem("farming:flour", {
	description = "Flour",
	inventory_image = "farming_flour.png",
	groups = {flammable = 1},
})

minetest.register_craftitem("farming:bread", {
	description = "Bread",
	inventory_image = "farming_bread.png",
	on_use = minetest.item_eat(5),
	groups = {flammable = 2},
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:flour",
	recipe = {"farming:wheat", "farming:wheat", "farming:wheat", "farming:wheat"}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "farming:bread",
	recipe = "farming:flour"
})


-- Straw

minetest.register_craft({
	output = "farming:straw 3",
	recipe = {
		{"farming:wheat", "farming:wheat", "farming:wheat"},
		{"farming:wheat", "farming:wheat", "farming:wheat"},
		{"farming:wheat", "farming:wheat", "farming:wheat"},
	}
})

minetest.register_craft({
	output = "farming:wheat 3",
	recipe = {
		{"farming:straw"},
	}
})


minetest.register_craft({
	type = "fuel",
	recipe = "farming:straw",
	burntime = 3,
})

minetest.register_craft({
	type = "fuel",
	recipe = "farming:wheat",
	burntime = 1,
})
