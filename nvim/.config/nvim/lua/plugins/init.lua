return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- ColorScheme
    use 'shaunsingh/nord.nvim'

    -- Statusline
    use 'nvim-lualine/lualine.nvim'

    -- Bufferline
    use { 'akinsho/bufferline.nvim', tag = "v2.*" }

    -- Autopairs
    use 'windwp/nvim-autopairs'

    -- Comments
    use 'numToStr/Comment.nvim'

    -- Surrounds
    use { 'kylechui/nvim-surround', tag = '*' }

    -- Plenary (UI component provider)
    use 'nvim-lua/plenary.nvim'

    -- Treesitter (Syntax Highlight)
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            require('nvim-treesitter.install').update({ with_sync = true })
        end,
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = 'nvim-lua/plenary.nvim'
    }
end)
