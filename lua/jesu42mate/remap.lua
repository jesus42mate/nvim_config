vim.g.mapleader = " ";
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");

vim.keymap.set("n", "J", "mzJ`z");
vim.keymap.set("n", "<C-d", "<C-d>zz");
vim.keymap.set("n", "C-u", "<C-u>zz");

vim.keymap.set("x", "<leader>p", "\"_DP");

vim.keymap.set("v", "<leader>y", "\"+y");
vim.keymap.set("v", "<leader>Y", "\"+Y");

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]);
vim.keymap.set("n", "<leader>0", ":nohlsearch<CR>:NoMatchParen<CR>");


vim.keymap.set("i", "{<CR>", "{<CR>}<C-o>O");
vim.keymap.set("i", "[<CR>", "[<CR>]<C-o>O<Tab>");
vim.keymap.set("n", "<leader><leader>", "i<Space><Esc>");


-- check for mapping in certain keycomb
vim.keymap.set("n", "<leader>m", ":imap ");

-- moving between buffers FAST
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>");
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>");
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>");
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>");

-- open a terminal on the left side with a width of 70
vim.keymap.set("n", "<leader>k", ":70vnew<CR>:terminal<CR>i");

-- change buffer size quickly
vim.keymap.set("n", "<leader>-", ":wincmd 8 <<CR>");
vim.keymap.set("n", "<leader>=", ":wincmd 8 ><CR>");


