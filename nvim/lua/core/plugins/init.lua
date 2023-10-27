local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- packer itself
    use { 'wbthomason/packer.nvim' }

    -- plugin
    use { 'windwp/nvim-autopairs' }
    use { 'numToStr/Comment.nvim' }
    use { 'phaazon/hop.nvim', branch = 'v2', }
    use { 'nvim-lualine/lualine.nvim' }
    use { 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim' }
    use { 'luukvbaal/nnn.nvim' }
    use { 'shaunsingh/nord.nvim' }
    use { 'gbprod/substitute.nvim' }
    use { 'kylechui/nvim-surround', tag = '*' }
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = 'nvim-lua/plenary.nvim' }
    use { 'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use { 'mbbill/undotree' }

    -- lsp
    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'L3MON4D3/LuaSnip' }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
