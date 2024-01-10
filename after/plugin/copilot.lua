vim.keymap.set("i", "<C-L>", '<Plug>(copilot-accept-word)')
vim.keymap.set("i", "<C-l>", '<Plug>(copilot-prev)')
vim.keymap.set("i", "<C-S>", '<Plug>(copilot-next)')
vim.keymap.set("n", "<leader>cop", ':lua copilot_toggle()<CR>')

function _G.copilot_toggle()
	if vim.g.copilot_enabled ~= 0 then
		vim.g.copilot_enabled = 0
		vim.cmd("echo 'Copilot disabled'")
	else
		vim.g.copilot_enabled = 1
		vim.cmd("echo 'Copilot enabled'")
	end
end




