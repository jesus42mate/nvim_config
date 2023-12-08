require("jesu42mate.remap");
require("jesu42mate.set");

-- Welcome to my init.lua

-- Requirements:
-- NeoVim ^0.9

-- Some important installations:
--
-- 1. Lazy.nvim (github: folke/lazy.nvim)
-- 2. Add the plugins (they will be sourced after re-entering neovim

-- Baby Steps:

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

require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }
	}
});

--[[
vim.api.nvim_create_autocmd({
  pattern = { "*" }, -- Matches all buffers
  buffer = true,
  type = "BufEnter",
  callback = function()
    vim.api.nvim_command("NoMatchParen")
  end,
})
]]--

