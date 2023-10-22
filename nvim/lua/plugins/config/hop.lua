local hop = require('hop')
local directions = require('hop.hint').HintDirection
local modes = {'n','v','o'}

hop.setup {
    multi_windows = true,
}

vim.keymap.set(modes, 'go', hop.hint_char1)
