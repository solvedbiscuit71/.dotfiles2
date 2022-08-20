-- keymappings
local set = vim.keymap.set
local opt = { silent = true }

vim.g.mapleader = " "

-- normal mode
set("n", "<leader>n", ":Ex<CR>", opt)

set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
set("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
set("n", "<leader>d", ":bdelete<CR>", opt)

set("n", "<leader>f", ":Telescope find_files<CR>", opt)
set("n", "<leader>g", ":Telescope git_files<CR>", opt)

-- visual mode
set("v", ">", ">gv", opt)
set("v", "<", "<gv", opt)
