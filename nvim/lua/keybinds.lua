-- keymappings
local set = vim.keymap.set
local opts = { silent = true }

vim.g.mapleader = " "

set("i", "jj", "<ESC>", opts)

set("n", "<leader>n", ":Ex<CR>", opts)
set("n", "<leader>d", ":bdelete<CR>", opts)

set("n", "<leader>y", "\"*y", opts)
set("v", "<leader>y", "\"*y", opts)

set("n", "<C-j>", "<C-w>j", opts)
set("n", "<C-k>", "<C-w>k", opts)
set("n", "<C-h>", "<C-w>h", opts)
set("n", "<C-l>", "<C-w>l", opts)

set("n", "<leader>f", ":Telescope find_files<CR>", opts)
set("n", "<leader>g", ":Telescope git_files<CR>", opts)

set("n", "<leader>w", ":HopWordMW<CR>", opts)
set("n", "<leader>c", ":HopChar1MW<CR>", opts)
set("n", "<leader>s", ":HopPatternMW<CR>", opts)

set("n", "<leader>u", ":UndotreeShow<CR>:UndotreeFocus<CR>", opts)

set("v", ">", ">gv", opt)
set("v", "<", "<gv", opts)

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

        set('i', '<C-k>', vim.lsp.buf.signature_help, opts)
        set('n', '[d', vim.diagnostic.goto_prev)
        set('n', ']d', vim.diagnostic.goto_next)
        set('n', 'K', vim.lsp.buf.hover, opts)
        set('n', 'R', vim.lsp.buf.rename, opts)
        set('n', 'gD', vim.lsp.buf.declaration, opts)
        set('n', 'gd', vim.lsp.buf.definition, opts)
        set('n', 'gi', vim.lsp.buf.implementation, opts)
        set('n', 'gr', vim.lsp.buf.references, opts)
    end,
})
