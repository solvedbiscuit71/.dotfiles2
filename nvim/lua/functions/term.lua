local api = vim.api

api.nvim_command("autocmd TermOpen * startinsert")
api.nvim_command("autocmd TermOpen * setlocal nonumber norelativenumber")
api.nvim_command("autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>")
api.nvim_command("autocmd TermEnter * setlocal signcolumn=no")

vim.keymap.set('n', '<leader>t', '<cmd>term fish<CR>', opts)
