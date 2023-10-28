require('lualine').setup {
    options = {
        icons_enabled = false,
        component_separators = '',
        section_separators = '',
        theme = 'nord',
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {{'filename', path=1}},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {{'filename', path=1}},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
}
