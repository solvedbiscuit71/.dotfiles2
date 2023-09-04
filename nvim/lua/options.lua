local global = vim.g
local opt = vim.opt
local api = vim.api

-- options avaiable in vim.opt table
opt.autoindent = true
opt.autoread = true
opt.background = 'dark'
opt.backup = false
opt.bufhidden = 'hide'
opt.clipboard = ''
opt.completeopt = 'menuone,noselect'
opt.conceallevel = 0
opt.cursorcolumn = true
opt.cursorline = true
opt.expandtab = true
opt.fileencoding = 'utf-8'
opt.hlsearch = false
opt.mouse = 'a'
opt.number = true
opt.pumheight = 10
opt.relativenumber = true
opt.scrolloff = 10
opt.shell = '/bin/sh'
opt.shiftwidth = 4
opt.showmode = false
opt.signcolumn = 'yes'
opt.smartcase = true
opt.smartindent = true
opt.swapfile = false
opt.tabstop = 4
opt.termguicolors = true
opt.timeoutlen = 1000
opt.undofile = true
opt.updatetime = 300
opt.wrap = false
opt.writebackup = false

global.nord_contrast = false
global.nord_borders = true
global.nord_disable_background = true
global.nord_italic = false
global.nord_uniform_diff_background = true
global.nord_bold = true

-- colorscheme
api.nvim_command('colorscheme nord')
api.nvim_command('hi Normal guibg=NONE ctermbg=NONE')
