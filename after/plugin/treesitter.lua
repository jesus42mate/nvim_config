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
		enable = function()
			local current_filetype = vim.bo.filetype
			print(current_filetype)
			for _, ft in ipairs({ "tsx", "typescript", "jsx", "javascript" }) do
				if current_filetype == ft then
					return true
				else return false
				end
			end
		end,
	},
	autotag = {
		enable = true
	},
	ensure_installed = { "typescript", "tsx" },
})

