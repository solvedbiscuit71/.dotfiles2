function snap_mode(opt)
    vim.opt.relativenumber = false
    vim.opt.cursorcolumn = false
    vim.opt.cursorline = false
    vim.opt.scrolloff = 0
end

vim.cmd([[command! SnapMode lua snap_mode()]])
