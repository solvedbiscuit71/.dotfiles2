-- keymappings
local opts = { silent = true }

vim.g.mapleader = ' '

vim.keymap.set('n', '<C-b>', '<C-^>', opts)

vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', '<', '<gv', opts)

vim.keymap.set({'o','x'}, 'A', ':<C-u>normal! ggVG<CR>', opts)
