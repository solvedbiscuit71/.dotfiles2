-- loading vim configuration
require "options"
require "keybinds"

-- loading plugins configuration
require "plugins"
require "plugins.autopairs"
require "plugins.comment"
require "plugins.hop"
require "plugins.lualine"
require "plugins.surround"
require "plugins.telescope"
require "plugins.treesitter"
require "plugins.undotree"
require "plugins.nnn"

-- loading lsp configuration
require "protocals"
require "protocals.cmp"

-- loading custom functions
require "functions"
