local builtin = require("nnn").builtin

require("nnn").setup({
    explorer = {
        cmd = "nnn -C -H",
        width = 35,
        side = "botright",
        fullscreen = false,
    },
    mappings = {
        { "<C-t>", builtin.open_in_tab },       -- open file(s) in tab
        { "<C-s>", builtin.open_in_split },     -- open file(s) in split
        { "<C-v>", builtin.open_in_vsplit },    -- open file(s) in vertical split
        { "<C-y>", builtin.copy_to_clipboard }, -- copy file(s) to clipboard
        { "<C-e>", builtin.populate_cmdline },  -- populate cmdline (:) with file(s)
    },
    auto_close = true,
    quitcd = "cd",
})

vim.keymap.set('n', '<leader>n', '<cmd>NnnExplorer<CR>', opts)
