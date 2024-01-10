local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

-- why is the mason setup here? no one knows.
require('mason').setup({})
require('mason-lspconfig').setup{
	ensure_installed = {
		'lua_ls',
		'rust_analyzer',
		'docker_compose_language_service',
		'tsserver',
	},
	handlers = {
		lsp_zero.default_setup,
	},
}

require('lspconfig').clangd.setup {
	cmd = { "clangd", "--offset-encoding=utf-16" },

}


