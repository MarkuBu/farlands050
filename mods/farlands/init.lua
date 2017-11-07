farlands = {}

farlands.path = minetest.get_modpath("farlands")

dofile(farlands.path.."/functions.lua")
dofile(farlands.path.."/nodes.lua")
dofile(farlands.path.."/doors.lua")
dofile(farlands.path.."/stairs.lua")

-- unregister unwanted items, nodes an recipes
minetest.clear_craft({output = 'default:sword_mese'})
minetest.unregister_item("default:sword_mese")
minetest.clear_craft({output = 'default:pick_mese'})
minetest.unregister_item("default:pick_mese")
minetest.clear_craft({output = 'default:shovel_mese'})
minetest.unregister_item("default:shovel_mese")
minetest.clear_craft({output = 'default:axe_mese'})
minetest.unregister_item("default:axe_mese")
minetest.clear_craft({output = 'farming:hoe_mese'})
minetest.unregister_item("farming:hoe_mese")
minetest.unregister_item("default:stone_with_mese")
minetest.unregister_item("default:mese")
minetest.unregister_item("default:meselamp")
minetest.clear_craft({output = 'default:meselamp'})
minetest.unregister_item("default:mese_post_light")
minetest.clear_craft({output = 'default:mese_post_light'})
minetest.unregister_item("default:mese_crystal")
minetest.unregister_item("default:mese_crystal_fragment")
minetest.clear_craft({output = 'default:mese'})
minetest.clear_craft({output = 'default:mese_crystal'})
minetest.clear_craft({output = 'default:mese_crystal_fragment'})

dungeon_loot.registered_loot = nil
dofile(farlands.path.."/dungeon_loot.lua")


-- override items
minetest.override_item("default:tree", {description = "Oak Tree"})
minetest.override_item("default:wood", {description = "Oakwood Planks"})
minetest.override_item("default:sapling", {description = "Oak Sapling"})
minetest.override_item("default:leaves", {description = "Oak Leaves"})
minetest.override_item("default:sand_with_kelp", {waving = 1})



minetest.override_item("default:bush_leaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_bush_leaves.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
	waving = 2,
})

minetest.override_item("default:acacia_bush_leaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_acacia_leaves_simple.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
	waving = 2,
})

minetest.override_item("default:leaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_leaves.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
	waving = 2,
})

minetest.override_item("default:acacia_leaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_acacia_leaves.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
	waving = 2,
})


minetest.override_item("default:jungleleaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_jungleleaves.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
	waving = 2,
})

minetest.override_item("default:pine_needles", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_pine_needles.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
	waving = 2,
})

minetest.override_item("default:aspen_leaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_aspen_leaves.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
	waving = 2,
})
