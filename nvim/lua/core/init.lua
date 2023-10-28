vim.opt.bufhidden = 'hide'
vim.opt.clipboard = ''
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.fileencoding = 'utf-8'
vim.opt.mouse = 'a'
vim.opt.pumheight = 10
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shell = '/bin/sh'
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.timeoutlen = 500
vim.opt.undofile = true
vim.opt.updatetime = 500
vim.opt.wrap = false

vim.g.mapleader = ' '

vim.keymap.set('n', '<C-b>', '<C-^>', opts)
vim.keymap.set('n', '<leader>n', ':Ex<CR>', opts)

vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

vim.keymap.set({'n','o','x'}, 'ga', ':<C-u>normal! ggVG<CR>')
vim.keymap.set('n', 'gh', ':set nohlsearch<CR>')
vim.keymap.set('n', 'gH', ':set hlsearch<CR>')

vim.keymap.set('n', '<C-k>', ':cprev<CR>')
vim.keymap.set('n', '<C-j>', ':cnext<CR>')
