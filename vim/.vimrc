syntax on
set background=dark
set backspace=indent,eol,start
set cursorline
set expandtab
set hidden
set incsearch
set laststatus=2
set nocompatible
set nohls
set noshowmode
set noswapfile
set number relativenumber
set scrolloff=10
set shiftwidth=2
set tabstop=2
set termguicolors
set timeoutlen=1000 ttimeoutlen=0
set wildmenu

let g:lightline = { 'colorscheme': 'apprentice' }

" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'itchyny/lightline.vim'
  Plug 'bling/vim-bufferline'

  Plug 'lifepillar/vim-gruvbox8'
  Plug 'ryanoasis/vim-devicons'
  Plug 'solvedbiscuit71/vim-autopair'

  Plug 'kana/vim-textobj-entire'
  Plug 'kana/vim-textobj-indent'
  Plug 'kana/vim-textobj-line'
  Plug 'kana/vim-textobj-user'

  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'vim-scripts/ReplaceWithRegister'
  Plug 'easymotion/vim-easymotion'
call plug#end()

" Color theme
colorscheme gruvbox8_hard
hi Normal guibg=NONE ctermbg=NONE

" Keybindings
let g:mapleader = ' '

nnoremap Y y$
vnoremap > >gv
vnoremap < <gv

nnoremap <silent> cd :lcd %:h<CR>
nnoremap <silent> <leader>n :Ex<CR>
nnoremap <silent> <C-h> :bprevious<CR>
nnoremap <silent> <C-l> :bnext<CR>

nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
