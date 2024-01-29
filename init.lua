require("jesu42mate");

--vim.api.nvim_create_autocmd("BufWritePost", {
--	pattern = "main.rs",
--	callback = function()
--		--create a new terminal in a new tab named "term"
--		vim.api.nvim_command("tabnew help | terminal cargo run")
--		--enter insert mode to get into the terminal for quick exit
--		vim.api.nvim_command("startinsert")
--	end,
--})

vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.lua" },
	callback = function()
		print("InsertLeave")
	end,
})
