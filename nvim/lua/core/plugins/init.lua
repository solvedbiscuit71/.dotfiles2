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
    use { 'nvim-lualine/lualine.nvim' }
    use { 'shaunsingh/nord.nvim' }
    use { 'gbprod/substitute.nvim' }
    use { 'kylechui/nvim-surround', tag = '*' }
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = {{'nvim-lua/plenary.nvim'}}}
	use { 'phaazon/hop.nvim', branch = 'v2' }
	use { 'nvim-treesitter/nvim-treesitter' }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
