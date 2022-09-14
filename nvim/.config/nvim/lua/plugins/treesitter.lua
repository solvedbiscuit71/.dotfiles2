require('nvim-treesitter.configs').setup {
    ensure_installed = {'lua', 'fish', 'vim', 'yaml'},
    sync_install = true,
    auto_install = true,

    highlight = {
        enable = true,
        disable = {'markdown'},
        additional_vim_regex_highlighting = false
    }
}
