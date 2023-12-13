require('nvim-treesitter.configs').setup({
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true
	},
	ensure_installed = { "typescript", "tsx" },
})

