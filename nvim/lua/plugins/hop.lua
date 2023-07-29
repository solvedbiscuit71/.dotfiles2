local hop = require('hop')
local directions = require('hop.hint').HintDirection

hop.setup {
    multi_windows = true,
}

vim.keymap.set('n', '<leader>c', hop.hint_char1, { silent = true })
