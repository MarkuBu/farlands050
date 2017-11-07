-- Global farming namespace

farming = {}
farming.path = minetest.get_modpath("farming")


-- Load files

dofile(farming.path .. "/api.lua")
dofile(farming.path .. "/nodes.lua")
dofile(farming.path .. "/hoes.lua")
dofile(farming.path .. "/wheat.lua")
dofile(farming.path .. "/cotton.lua")




minetest.register_craft({
	type = "fuel",
	recipe = "farming:hoe_wood",
	burntime = 5,
})
