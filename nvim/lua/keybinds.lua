-- keymappings
local opts = { silent = true }

vim.g.mapleader = ' '

vim.keymap.set('i', 'jj', '<ESC>', opts)

vim.keymap.set('n', '<C-b>', '<C-^>', opts)
vim.keymap.set('n', '<leader>t', '<cmd>term fish<CR>', opts)
vim.keymap.set('n', '<leader>n', '<cmd>NnnPicker<CR>', opts)
vim.keymap.set({'n','v'}, '<leader>y', '"*y', opts)

vim.keymap.set('v', '>', '>gv', opt)
vim.keymap.set('v', '<', '<gv', opts)
