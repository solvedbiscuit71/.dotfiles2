local opts = { silent = true }

require('yanky').setup({
    ring = {
        history_length = 100,
    },
    system_clipboard = {
        sync_with_ring = false,
    },
    highlight = {
        on_put = false,
        on_yank = false,
        timer = 0,
    },
    preserve_cursor_position = {
        enabled = true,
    },
})

vim.keymap.set({'n','x'}, 'p', '<Plug>(YankyPutAfter)', opts)
vim.keymap.set({'n','x'}, 'P', '<Plug>(YankyPutBefore)', opts)
vim.keymap.set({'n','x'}, 'gp', '<Plug>(YankyGPutAfter)', opts)
vim.keymap.set({'n','x'}, 'gP', '<Plug>(YankyGPutBefore)', opts)
vim.keymap.set('n', '<C-j>', '<Plug>(YankyCycleForward)', opts)
vim.keymap.set('n', '<C-k>', '<Plug>(YankyCycleBackward)', opts)
vim.keymap.set('n', '<leader>y', require('telescope').extensions.yank_history.yank_history, opts)
