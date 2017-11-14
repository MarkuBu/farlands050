local ai = {name = "air", prob = 0 }
local lf = {name = "default:leaves"}
local tr = {name = "default:tree"}
local tf = {name = "default:tree", prob = 255, force_place = true}

mapgen.oak_schematic =
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
		ai, ai, lf, lf, lf, lf, ai,
		ai, ai, lf, lf, lf, lf, ai,
		ai, ai, ai, lf, lf, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,

		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, lf, lf, lf, lf, lf, ai,
		lf, lf, lf, lf, lf, lf, lf,
		ai, lf, lf, lf, tr, lf, ai,
		ai, ai, lf, lf, lf, lf, ai,
		ai, ai, ai, lf, ai, ai, ai,

		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, lf, lf, ai, ai,
		lf, lf, lf, lf, tr, lf, ai,
		lf, lf, lf, lf, tr, lf, lf,
		lf, lf, lf, lf, lf, lf, lf,
		ai, lf, lf, lf, lf, lf, ai,
		ai, ai, lf, lf, lf, ai, ai,

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
		ai, ai, lf, ai, tr, lf, ai,
		lf, lf, lf, ai, lf, tr, lf,
		lf, lf, lf, tr, lf, lf, lf,
		lf, lf, lf, tr, lf, lf, lf,
		lf, lf, lf, lf, lf, lf, ai,
		ai, lf, lf, lf, lf, ai, ai,

		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, lf, lf, lf, lf, lf, lf,
		lf, lf, lf, lf, lf, lf, lf,
		lf, lf, lf, lf, lf, lf, ai,
		lf, lf, lf, tr, lf, ai, ai,
		ai, ai, lf, lf, ai, ai, ai,

		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai,
		ai, ai, ai, lf, ai, ai, ai,
		ai, ai, lf, lf, ai, ai, ai,
		ai, lf, lf, lf, lf, ai, ai,
		ai, lf, lf, lf, ai, ai, ai,
		ai, ai, ai, ai, ai, ai, ai
	},
	size = {
		y = 10,
		x = 7,
		z = 7
	}
}
