require('nvim-treesitter.configs').setup({
	modules = {
	},
	ignore_install = { "none" },
	sync_install = false,
	highlight = {
		enable = true,
	},
	auto_install = false,
	indent = {
		enable = true,
	},
	autotag = {
		enable = true
	},
	ensure_installed = { "typescript", "tsx" },
})

