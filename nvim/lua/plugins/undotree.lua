vim.cmd([[let g:undotree_WindowLayout = 3]])

vim.keymap.set('n', '<leader>u', ':UndotreeShow<CR>:UndotreeFocus<CR>', { silent=true })
