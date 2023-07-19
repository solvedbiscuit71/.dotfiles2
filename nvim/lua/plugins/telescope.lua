local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

require('telescope').setup {
    defaults = {
        disable_devicons = true,
        file_ignore_patterns = {
            '^.git/',
            '^node_modules/',
        },
        mappings = {
          i = {
              ['<esc>'] = actions.close,
          },
        },
    },
    pickers = {
        find_files = {
            follow = true,
            hidden = true,
            no_ignore = false,
        },
    },
}

local opts = { silent = true }

vim.keymap.set('n', '<leader>f', builtin.find_files, opts)
vim.keymap.set('n', '<leader>g', builtin.live_grep, opts)
