
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action();

--fix needed.
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm({select = false}),
		['<C-k>'] = cmp.mapping.select_next_item,
		['<C-j>'] = cmp.mapping.select_prev_item,
	})
})
