return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use 'shaunsingh/nord.nvim'

    -- Statusline
    use 'nvim-lualine/lualine.nvim'

    -- Autopairs
    use 'windwp/nvim-autopairs'

    -- Comments
    use 'numToStr/Comment.nvim'

    -- Surrounds
    use { 'kylechui/nvim-surround', tag = '*' }

    -- Plenary
    use 'nvim-lua/plenary.nvim'

    -- Undotree
    use 'mbbill/undotree'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- Easymotion for neovim
    use {
      'phaazon/hop.nvim',
      branch = 'v2',
    }

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
end)
