vim.g.undotree_WindowLayout = 4
vim.g.undotree_DiffAutoOpen = 0
vim.g.undotree_SplitWidth = 35

vim.keymap.set('n', '<leader>u', function()
    vim.cmd.UndotreeShow()
    vim.cmd.UndotreeFocus()
end, { silent=true })
