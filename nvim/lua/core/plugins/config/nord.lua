-- plugins config
vim.g.nord_contrast = false
vim.g.nord_borders = true
vim.g.nord_disable_background = true
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false

-- colorscheme
vim.api.nvim_command('colorscheme nord')
vim.api.nvim_command('hi Normal guibg=NONE ctermbg=NONE')
