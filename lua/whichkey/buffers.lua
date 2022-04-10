local wk = require("which-key")

local spaceopts = {
	mode = 'n',
	prefix = ' ',
	silent = true,
	noremap = true,
	buffer = nil
}

local buffermaps = {
	name = "buffers",
	b = {
		k = {"<cmd>bdel!<CR>", "kill current buffer"},
		s = {"<cmd>Telescope buffers theme=dropdown<CR>", "search open buffers"}
	}
}

wk.register(buffermaps, spaceopts)
