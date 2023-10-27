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

vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)
vim.keymap.set('n', '<leader>fg', builtin.git_files, opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, opts)

vim.keymap.set('n', '<leader>f*', builtin.grep_string, opts)
vim.keymap.set('n', '<leader>f/', builtin.live_grep, opts)

vim.keymap.set('n', '<leader>lr', builtin.lsp_references, opts)
vim.keymap.set('n', '<leader>lt', builtin.treesitter, opts)
