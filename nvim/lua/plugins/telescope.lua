local actions = require('telescope.actions')

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

local set = vim.keymap.set
local opts = { silent = true }

set('n', '<leader>f', ':Telescope find_files<CR>', opts)
