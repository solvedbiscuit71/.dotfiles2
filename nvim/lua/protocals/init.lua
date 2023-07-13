local lspconfig = require'lspconfig'
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = { 
    'html',
    'cssls',
    'tsserver',
    'emmet_language_server',
    'pylsp',
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities,
        single_file_support = true,
    }
end
