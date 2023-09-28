local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
local opts = { silent = true }

-- Load telescope
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

-- load extensions
require('telescope').load_extension('yank_history')

vim.keymap.set('n', '<leader>f', builtin.find_files, opts)
