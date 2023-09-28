local hop = require('hop')
local directions = require('hop.hint').HintDirection
local modes = {'n','v','o'}

hop.setup {
    multi_windows = true,
}

vim.keymap.set(modes, 'go', hop.hint_char1)
vim.keymap.set(modes, 'f', function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end)
vim.keymap.set(modes, 'F', function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end)
vim.keymap.set(modes, 't', function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end)
vim.keymap.set(modes, 'T', function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end)
