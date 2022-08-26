local actions = require('telescope.actions')

require('telescope').setup {
    defaults = {
        disable_devicons = true,
        mappings = {
          i = {
              ["<esc>"] = actions.close
          }
        }
    }
}
