-- keymappings
local opts = { silent = true }

vim.g.mapleader = ' '

vim.keymap.set('n', '<C-b>', '<C-^>', opts)
vim.keymap.set({'n','v'}, '<C-a>', ':<C-u>normal! ggVG<CR>', opts)

vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', '<', '<gv', opts)

vim.keymap.set('o', 'A', ':<C-u>normal! ggVG<CR>', opts)
