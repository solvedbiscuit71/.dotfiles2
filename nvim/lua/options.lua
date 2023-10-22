-- neovim config
vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.background = 'dark'
vim.opt.backup = false
vim.opt.bufhidden = 'hide'
vim.opt.clipboard = ''
vim.opt.completeopt = 'menuone,noselect'
vim.opt.conceallevel = 0
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.fileencoding = 'utf-8'
vim.opt.hlsearch = false
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.pumheight = 10
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.shell = '/bin/sh'
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.signcolumn = 'yes'
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

-- plugins config
vim.g.nord_contrast = false
vim.g.nord_borders = true
vim.g.nord_disable_background = true
vim.g.nord_italic = true
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = true

-- colorscheme
vim.api.nvim_command('colorscheme nord')
vim.api.nvim_command('hi Normal guibg=NONE ctermbg=NONE')

-- terminal
vim.api.nvim_command("autocmd TermOpen * startinsert")
vim.api.nvim_command("autocmd TermOpen * setlocal nonumber norelativenumber")
vim.api.nvim_command("autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>")
vim.api.nvim_command("autocmd TermEnter * setlocal signcolumn=no")
