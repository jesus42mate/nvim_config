local ibl = require("ibl")
local config = require("ibl.config");
config = {
	whitespace = { highlight = { "Whitespace", "NonText" } },
	indent = { char = '┊' },
	scope = { show_start = false }
}
require("ibl").setup(config)
