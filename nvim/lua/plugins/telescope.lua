local actions = require('telescope.actions')

require('telescope').setup {
    defaults = {
        disable_devicons = true,
        mappings = {
          i = {
              ["<esc>"] = actions.close
          }
        }
    },
    pickers = {
        find_files = {
            hidden = true,
            no_ignore = true,
            file_ignore_patterns = {
                ".git",
                "node_modules"
            }
        }
    }
}
