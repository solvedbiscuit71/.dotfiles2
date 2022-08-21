return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- ColorScheme
    use { 'ellisonleao/gruvbox.nvim' }

    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Bufferline
    use {
        'akinsho/bufferline.nvim', 
        tag = "v2.*", 
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Autopairs
    use { 'windwp/nvim-autopairs' }

    -- Comments
    use { 'numToStr/Comment.nvim' }

    -- Surrounds
    use { 'kylechui/nvim-surround', tag = '*' }

    -- Plenary (UI component provider)
    use { 'nvim-lua/plenary.nvim' }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.0',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- Markdown
    use { 'ixru/nvim-markdown' }
end)
