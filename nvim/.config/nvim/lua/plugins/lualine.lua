require('lualine').setup {
    options = {
        icons_enabled = false,
        theme = 'gruvbox_dark',
        component_separators = '',
        section_separators = '',
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
}
