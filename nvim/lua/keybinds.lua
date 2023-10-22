-- keymappings
local opts = { silent = true }

vim.g.mapleader = ' '

vim.keymap.set('n', '<C-b>', '<C-^>', opts)
vim.keymap.set('n', '<leader>q', ':qa<CR>', opts)
vim.keymap.set('n', '<leader>w', ':wa<CR>', opts)
vim.keymap.set('n', '<leader>d', ':bd!<CR>', opts)


vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', '<', '<gv', opts)

vim.keymap.set({'n','o','x'}, '<leader>a', ':<C-u>normal! ggVG<CR>', opts)
