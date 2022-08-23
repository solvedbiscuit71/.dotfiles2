syntax on
set background=dark
set backspace=indent,eol,start
set cursorline
set noexpandtab
set hidden
set incsearch
set laststatus=2
set nocompatible
set nohls
set noshowmode
set noswapfile
set number relativenumber
set scrolloff=10
set shiftwidth=4
set softtabstop=4
set tabstop=8
set termguicolors
set timeoutlen=1000 ttimeoutlen=0
set wildmenu

let g:lightline = { 'colorscheme': 'apprentice' }

" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'lifepillar/vim-gruvbox8'

  Plug 'itchyny/lightline.vim'
  Plug 'bling/vim-bufferline'

  Plug 'solvedbiscuit71/vim-autopair'

  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
call plug#end()

" Color theme
colorscheme gruvbox8_hard
hi Normal guibg=NONE ctermbg=NONE

" Keybindings
let g:mapleader = ' '
nnoremap <leader>n <cmd>Ex<CR>

nnoremap <C-h> <cmd>bprevious<CR>
nnoremap <C-l> <cmd>bnext<CR>
nnoremap <leader>d <cmd>bd<CR>

vnoremap > >gv
vnoremap < <gv

nnoremap Y y$
vnoremap <C-y> "*y
