require('nvim-treesitter.configs').setup {
    ensure_installed = {'lua', 'fish', 'vim', 'yaml', 'markdown'},
    sync_install = true,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
}
