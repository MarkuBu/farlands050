local ai = {name = "air", prob = 0 }
local lf = {name = "default:leaves"}
local lr = {name = "default:leaves", prob = 127}
local tr = {name = "default:tree"}
local tf = {name = "default:tree", prob = 255, force_place = true}

mapgen.oak =
{
	yslice_prob = {
		{
			prob = 127,
			ypos = 1
		},
		{
			prob = 200,
			ypos = 2
		},
		{
			prob = 200,
			ypos = 4
		},
		{
			prob = 180,
			ypos = 6
		},
		{
			prob = 254,
			ypos = 7
		},
		{
			prob = 254,
			ypos = 8
		},
		{
			prob = 254,
			ypos = 9
		}
	},
	data = {
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, lr, lf, lf, lf, ai,
		ai, ai, lf, lf, lf, lr, ai,
		ai, ai, ai, lr, lf, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,

		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, lf, lr, lf, lf, lr, ai,
		lf, lf, lf, lf, lf, lf, lf,
		ai, lf, lf, lf, tr, lf, ai,
		ai, ai, lr, lf, lf, lr, ai,
		ai, ai, ai, lr, ai, ai, ai,

		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, lr, lf, lf, ai, ai,
		lr, lf, lf, lf, tr, lr, ai,
		lf, lf, lf, lf, tr, lf, lr,
		lr, lf, lf, lf, lf, lf, lf,
		ai, lr, lf, lf, lf, lr, ai,
		ai, ai, lr, lf, lr, ai, ai,

		ai, ai, ai, tf, ai, ai, ai,
		ai, ai, ai, tf, ai, ai, ai,
		ai, ai, ai, tf, ai, ai, ai,
		ai, ai, ai, tf, ai, ai, ai,
		ai, ai, ai, tf, ai, ai, ai,
		ai, ai, tr, tr, ai, lf, ai,
		lf, tr, lf, tr, lf, lf, lf,
		lf, lf, lf, ai, lf, lf, lf,
		lf, lf, lf, lf, lf, lf, lf,
		ai, lf, lf, lf, lf, lf, lf,
		ai, lf, lf, lf, lf, ai, ai,

		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, lr, ai, tr, lf, ai,
		lr, lf, lf, ai, lf, tr, lr,
		lf, lf, lf, tr, lf, lf, lf,
		lf, lf, lf, tr, lf, lf, lf,
		lr, lf, lf, lf, lf, lr, ai,
		ai, lr, lf, lf, lr, ai, ai,

		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, lr, lf, lf, lf, lf, lr,
		lr, lf, lf, lf, lf, lf, lf,
		lf, lf, lf, lf, lf, lr, ai,
		lf, lf, lf, tr, lf, ai, ai,
		ai, ai, lr, lf, ai, ai, ai,

		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, lr, ai, ai, ai,
		ai, ai, lr, lf, ai, ai, ai,
		ai, lf, lf, lf, lf, ai, ai,
		ai, lr, lf, lf, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai
	},
	size = {
		y = 11,
		x = 7,
		z = 7
	}
}

mapgen.oak_s =
{
	yslice_prob = {
		{
			prob = 254,
			ypos = 0
		},
		{
			prob = 127,
			ypos = 1
		},
		{
			prob = 254,
			ypos = 2
		},
		{
			prob = 254,
			ypos = 3
		},
		{
			prob = 127,
			ypos = 4
		},
		{
			prob = 254,
			ypos = 5
		},
		{
			prob = 254,
			ypos = 6
		}
	},
	data = {
		ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai,
		ai, lr, lf, lf, ai,
		ai, lf, lf, lf, ai,
		ai, lr, lf, lr, ai,
		ai, ai, ai, ai, ai,

		ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai,
		ai, lf, lr, lf, ai,
		lf, lf, lf, lf, lr,
		ai, lf, lf, lf, lf,
		ai, lr, lf, lf, ai,

		ai, ai, tf, ai, ai,
		ai, ai, tf, ai, ai,
		ai, ai, tf, ai, ai,
		ai, ai, tf, ai, ai,
		lf, lr, tr, lf, lr,
		lf, lf, tr, lf, lf,
		lr, lf, tr, lf, lf,
		ai, lf, lf, lr, ai,

		ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai,
		lr, lf, lr, lf, lr,
		lf, lf, lf, lf, lf,
		lf, lf, lf, lf, lf,
		ai, lf, lf, lr, ai,

		ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai,
		ai, lf, lf, lr, ai,
		ai, lf, lf, lf, ai,
		ai, lr, lf, ai, ai,
		ai, ai, ai, ai, ai
	},
	size = {
		y = 8,
		x = 5,
		z = 5
	}
}

lf = {name = "mapgen:willow_leaves"}
lr = {name = "mapgen:willow_leaves", prob = 127}
tr = {name = "mapgen:willow_tree"}
tf = {name = "mapgen:willow_tree", prob = 255, force_place = true}
t1 = {name = "mapgen:willow_tree", param2 = 22, force_place = true}
t2 = {name = "mapgen:willow_tree", param2 = 18, force_place = true}
t3 = {name = "mapgen:willow_tree", param2 = 12, force_place = true}
t4 = {name = "mapgen:willow_tree", param2 = 7, force_place = true}

mapgen.willow2 =
{
	yslice_prob = {
		{
			prob = 254,
			ypos = 0
		},
		{
			prob = 254,
			ypos = 1
		},
		{
			prob = 254,
			ypos = 2
		},
		{
			prob = 127,
			ypos = 3
		},
		{
			prob = 254,
			ypos = 4
		},
		{
			prob = 254,
			ypos = 5
		},
		{
			prob = 127,
			ypos = 6
		},
		{
			prob = 254,
			ypos = 7
		},
		{
			prob = 254,
			ypos = 8
		},
		{
			prob = 254,
			ypos = 9
		}
	},
	data = {
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, lf, ai, ai, ai, ai, ai,
		ai, lf, ai, lf, ai, ai, ai,
		ai, lf, lf, lf, ai, lr, ai,
		ai, lf, lf, lf, lf, lf, ai,
		ai, lf, lf, lf, lf, lf, ai,
		ai, lr, lf, lf, lf, lr, ai,
		ai, ai, ai, ai, ai, ai, ai,

		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, lr,
		lr, ai, ai, ai, ai, ai, lf,
		lf, ai, ai, ai, ai, ai, lf,
		lf, ai, ai, ai, ai, ai, lf,
		lf, ai, ai, ai, ai, ai, lf,
		lf, lf, ai, ai, ai, lf, lf,
		lr, lf, lf, lf, lf, lf, lr,
		ai, lr, lf, lf, lf, lr, ai,

		ai, ai, t1, ai, ai, ai, ai,
		ai, ai, t2, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, lr,
		lr, ai, ai, ai, ai, ai, lf,
		lf, ai, ai, ai, ai, ai, lf,
		lf, ai, ai, lf, ai, ai, lf,
		lr, lf, lf, lf, lf, lf, lr,
		ai, lr, lf, lf, lf, lr, ai,

		ai, ai, ai, t1, t1, ai, ai,
		ai, ai, ai, t3, t4, ai, ai,
		lr, ai, ai, tr, ai, ai, ai,
		lf, ai, ai, tr, ai, ai, lr,
		lf, ai, ai, tr, ai, ai, lf,
		lf, ai, ai, tr, ai, ai, lf,
		lf, ai, ai, tr, ai, ai, lf,
		lf, ai, lf, tr, lf, ai, lf,
		lr, lf, lf, tr, lf, lf, lr,
		ai, lr, lf, lf, lf, lr, ai,

		ai, ai, ai, t1, ai, ai, ai,
		ai, ai, ai, t4, ai, ai, lr,
		ai, ai, ai, t4, ai, ai, lf,
		ai, ai, ai, ai, ai, ai, lf,
		lr, ai, ai, ai, ai, ai, lf,
		lf, ai, ai, ai, ai, ai, lf,
		lf, ai, ai, ai, ai, ai, lf,
		lf, ai, ai, lf, ai, ai, lf,
		lr, lf, lf, lf, lf, lf, lr,
		ai, lr, lf, lf, lf, lr, ai,

		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		lr, ai, ai, ai, ai, ai, ai,
		lf, ai, ai, ai, ai, ai, ai,
		lf, ai, ai, ai, ai, ai, lr,
		lf, ai, ai, ai, ai, ai, lf,
		lf, lf, ai, ai, ai, lf, lf,
		lr, lf, lf, lf, lf, lf, lr,
		ai, lr, lf, lf, lf, lr, ai,

		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, lr, ai, ai,
		ai, ai, lr, ai, lf, ai, ai,
		ai, ai, lf, ai, lf, lf, ai,
		ai, lf, lf, lf, lf, lf, ai,
		ai, lf, lf, lf, lf, lf, ai,
		ai, lf, lf, lf, lf, lf, ai,
		ai, lf, lf, lf, lf, lf, ai,
		ai, ai, ai, ai, ai, ai, ai
	},
	size = {
		y = 10,
		x = 7,
		z = 7
	}
}
