vim.opt.bufhidden = 'hide'
vim.opt.clipboard = ''
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.fileencoding = 'utf-8'
vim.opt.mouse = 'a'
vim.opt.pumheight = 10
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shell = '/bin/sh'
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.timeoutlen = 500
vim.opt.undofile = true
vim.opt.updatetime = 500
vim.opt.wrap = false
vim.g.mapleader = ' '


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

require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }

	use { 
		'gbprod/nord.nvim',
		config = function()
			require('nord').setup({})
		end
	}

	use { 
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('nvim-treesitter.configs').setup({
				ensure_installed = { 'bash', 'c', 'lua', 'markdown', 'vim', 'vimdoc', 'query' },
				auto_install = true,
				highlight = {
					enable = true,
					disable = function(lang, buf)
						local max_filesize = 100 * 1024
						local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
						if ok and stats and stats.size > max_filesize then
							return true
						end
					end,
				},
				indent = {
					enable = true
				},
			})
		end
	}

	use { 
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup({})
		end
	}

	use { 
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup({})
		end
	}

	use { 
		'kylechui/nvim-surround', tag = '*',
		config = function()
			require('nvim-surround').setup({})
		end
	}

	use { 
		'nvim-lualine/lualine.nvim',
		config = function()
			require('lualine').setup({
				options = {
					icons_enabled = false,
					component_separators = '',
					section_separators = '',
					theme = 'nord',
				},
				sections = {
					lualine_a = {'mode'},
					lualine_b = {'branch'},
					lualine_c = {{'filename', path=1}},
					lualine_x = {},
					lualine_y = {},
					lualine_z = {},
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = {{'filename', path=1}},
					lualine_x = {},
					lualine_y = {},
					lualine_z = {},
				},
			})
		end
	}

	use { 
		'gbprod/substitute.nvim',
		config = function()
			require('substitute').setup({
				yank_substituted_text = false,
				highlight_substituted_text = {
					enabled = true,
					timer = 200,
				},
			})
		end
	}

	use { 
		'phaazon/hop.nvim', branch = 'v2',
		config = function()
			require('hop').setup({})
		end
	}

	use { 
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = {{'nvim-lua/plenary.nvim'}},
		config = function()
			require('telescope').setup({
				defaults = {
					layout_strategy = 'vertical',
					layout_config = { height = 0.5, width = 0.5 },
				},
				pickers = {
					find_files = {
						follow = true,
						hidden = true,
					},
				},
			})
		end
	}


	if packer_bootstrap then
		require('packer').sync()
	end
end)


vim.api.nvim_command('colorscheme nord')


vim.keymap.set('n', '<leader>n', ':Ex<CR>')
vim.keymap.set('n', '<leader>f', require('telescope.builtin').find_files, {})
vim.keymap.set('n', '<leader>b', require('telescope.builtin').buffers, {})
vim.keymap.set('n', '<leader>s', function ()
	require('telescope.builtin').grep_string({
		search = vim.fn.input("> "),
		use_regex=true,
		disable_coordinates=true,
	})
end)

vim.keymap.set('n', 'go', ':HopChar1<CR>')
vim.keymap.set('n', 'gs', require('substitute').operator, { noremap = true })
vim.keymap.set('n', 'gss', require('substitute').line, { noremap = true })
vim.keymap.set('n', 'gS', require('substitute').eol, { noremap = true })
vim.keymap.set('x', 'gs', require('substitute').visual, { noremap = true })
vim.keymap.set('n', 'gx', require('substitute.exchange').operator, { noremap = true })
vim.keymap.set('x', 'gx', require('substitute.exchange').visual, { noremap = true })
vim.keymap.set('n', 'gxx', require('substitute.exchange').line, { noremap = true })
vim.keymap.set('n', 'gr', require('substitute.range').operator, { noremap = true })
vim.keymap.set('x', 'gr', require('substitute.range').visual, { noremap = true })

vim.keymap.set('n', 'gh', ':set nohlsearch<CR>')
vim.keymap.set('n', 'gH', ':set hlsearch<CR>')
vim.keymap.set({'n','o','x'}, 'ga', ':<C-u>normal! ggVG<CR>')
vim.keymap.set({'n','v'}, 'gy', '"+y')

vim.keymap.set('n', '<C-b>', '<C-^>')
vim.keymap.set('n', '<C-k>', ':cprev<CR>')
vim.keymap.set('n', '<C-j>', ':cnext<CR>')

vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')
