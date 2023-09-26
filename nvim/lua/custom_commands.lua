function no_snap_mode()
    vim.opt.relativenumber = true
    vim.opt.cursorcolumn = true
    vim.opt.cursorline = true
    vim.opt.scrolloff = 10
end

function snap_mode()
    vim.opt.relativenumber = false
    vim.opt.cursorcolumn = false
    vim.opt.cursorline = false
    vim.opt.scrolloff = 0
end

vim.cmd([[command! SnapMode lua snap_mode()]])
vim.cmd([[command! NoSnapMode lua no_snap_mode()]])
