-- keymappings
local set = vim.keymap.set
local opts = { silent = true }

vim.g.mapleader = ' '

set('i', 'jj', '<ESC>', opts)

set('n', '<leader>n', ':Ex<CR>', opts)
set('n', '<leader>d', ':bdelete<CR>', opts)

set({'n', 'v'}, '<leader>y', '\"*y', opts)

set('n', '<C-b>', '<C-^>', opts)

set('v', '>', '>gv', opt)
set('v', '<', '<gv', opts)
