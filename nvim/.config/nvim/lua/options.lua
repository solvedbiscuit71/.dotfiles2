-- options avaiable in vim.opt table
vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.background = "dark"
vim.opt.backup = false
vim.opt.bufhidden = "hide"
vim.opt.clipboard = ""
vim.opt.completeopt = "menuone,noselect"
vim.opt.conceallevel = 0
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.hlsearch = false
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.pumheight = 10
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.shell = "/opt/homebrew/bin/bash"
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.timeoutlen = 1000
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.wrap = false
vim.opt.writebackup = false

-- colorscheme
vim.cmd([[colorscheme nord]])
vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
