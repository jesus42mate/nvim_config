require("jesu42mate.remap");
require("jesu42mate.set");

-- Welcome to my init.lua

-- Requirements:
-- NeoVim ^0.9

-- Some important installations:
-- 1. Lazy.nvim (github: folke/lazy.nvim)

-- 1. Lazy.nvim bootstrapping
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local telescope_setup = function()
	local telescope = require("telescope")
	local actions = require("telescope.actions")

	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-k>"] = actions.move_selection_previous,
					["<C-j>"] = actions.move_selection_next,
					["<C-q>"] = actions.send_to_qflist,

				}
			}
		}
	})
end

-- 2. Add the plugins (they will be sourced after re-entering neovim
require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = telescope_setup
	},
	{"folke/neodev.nvim", opts = {}},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'williamboman/mason.nvim',
	{'neoclide/vim-jsx-improve'},
	config = function()
		local mason_lspconfig = require('mason-lspconfig')
		mason_lspconfig.setup({
			automatic_installation = true
		})
	end
	},
	{'williamboman/mason-lspconfig.nvim'},
	{'windwp/nvim-autopairs', event = "InsertEnter", opts = {}},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{'mbbill/undotree'},
	{"ThePrimeagen/harpoon", branch = "harpoon2", requires = { {"nvim-lua/plenary.nvim"}}},
	{'fenetikm/falcon'},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{'windwp/nvim-ts-autotag'},
	{'AndrewRadev/tagalong.vim'},
	{'nvim-tree/nvim-tree.lua'},

});


