local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
local opts = { silent = true }

-- Load telescope
require('telescope').setup {
    defaults = {
        disable_devicons = false,
        file_ignore_patterns = {
            '^.git/',
            '^node_modules/',
        },
    },
    pickers = {
        find_files = {
            follow = true,
            hidden = true,
            no_ignore = true,
            no_ignore_parent = true,
        },
    },
}

-- load extensions
require('telescope').load_extension('yank_history')

vim.keymap.set('n', '<leader>f', builtin.find_files, opts)
vim.keymap.set('n', '<leader>g', builtin.git_files, opts)
vim.keymap.set('n', '<leader>b', builtin.buffers, opts)
vim.keymap.set('n', '<leader>/', builtin.live_grep, opts)
