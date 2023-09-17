vim.g.undotree_WindowLayout = 3

vim.keymap.set('n', '<leader>u', function()
    vim.cmd.UndotreeShow()
    vim.cmd.UndotreeFocus()
end, { silent=true })
