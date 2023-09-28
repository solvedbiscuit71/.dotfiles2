-- keymappings
local opts = { silent = true }

vim.g.mapleader = ' '

vim.keymap.set('i', 'jj', '<ESC>', opts)

vim.keymap.set('n', '<C-b>', '<C-^>', opts)
vim.keymap.set({'n','v','o'}, 'A', ':<C-u>normal! ggVG<CR>', opts)

vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', '<', '<gv', opts)
