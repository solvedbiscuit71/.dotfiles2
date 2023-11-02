require('hop').setup()
local opt = {silent = true}

vim.keymap.set('n', 'go', ':HopChar1<CR>', opt)
