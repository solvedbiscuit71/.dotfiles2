local builtin = require('telescope.builtin')

require('telescope').setup {
    defaults = {
    	layout_strategy = 'vertical',
      	layout_config = { height = 0.5, width = 0.5 },
        file_ignore_patterns = {
            '^.git/',
            '^node_modules/',
        },
    },
    pickers = {
        find_files = {
            follow = true,
            hidden = true,
        },
    },
}

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>s', function ()
	builtin.grep_string({
		search = vim.fn.input("> "),
		use_regex=true,
		disable_coordinates=true,
	})
end)
