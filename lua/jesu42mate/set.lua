vim.opt.nu = true;
vim.opt.relativenumber = true;

vim.opt.tabstop = 4;
vim.opt.softtabstop = 4;
vim.opt.shiftwidth = 4;
vim.expandtab = true;

vim.opt.smartindent = true;
vim.opt.autoindent = true;
vim.opt.wrap = false;

vim.opt.termguicolors = true;

vim.opt.scrolloff = 10;
vim.opt.signcolumn = "no";
vim.opt.isfname:append("@-@");

vim.opt.updatetime = 50;

vim.api.nvim_set_option_value('matchpairs', false, {});

--vim.opt.colorcolumn = "80";

vim.g.mapleader = " ";

--vim.keymap.set("n", "<leader>q", ":%s/\(");





































