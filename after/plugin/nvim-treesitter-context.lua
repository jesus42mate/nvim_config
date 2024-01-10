
require('treesitter-context').setup({
	max_lines = 3, -- maximum number of lines the context highlights
	trim_scope = 'inner', -- trim the scope of the context (using the same specifiers as highlighter)
});
