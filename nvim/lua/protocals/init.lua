local lspconfig = require('lspconfig')

if pcall(require, 'protocals.server') then
    local servers = require('protocals.server')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
            capabilities = capabilities,
            single_file_support = true,
        }
    end
end

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

        vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'R', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end,
})
