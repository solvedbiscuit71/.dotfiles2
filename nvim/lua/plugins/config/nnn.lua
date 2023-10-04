local builtin = require("nnn").builtin

require("nnn").setup({
    picker = {
        cmd = "nnn -C -H",
        style = {
            border = "rounded",
        },
        session = "shared",
        fullscreen = false,
    },
    mappings = {
        { "<C-t>", builtin.open_in_tab },       -- open file(s) in tab
        { "<C-s>", builtin.open_in_split },     -- open file(s) in split
        { "<C-v>", builtin.open_in_vsplit },    -- open file(s) in vertical split
        { "<C-y>", builtin.copy_to_clipboard }, -- copy file(s) to clipboard
        { "<C-w>", builtin.cd_to_path },        -- cd to file directory
        { "<C-e>", builtin.populate_cmdline },  -- populate cmdline (:) with file(s)
    },
    quitcd = "cd",
})

vim.keymap.set('n', '<leader>n', '<cmd>NnnPicker<CR>', opts)
