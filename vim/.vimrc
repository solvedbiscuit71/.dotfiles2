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
set smartindent
set smarttab
set shiftwidth=2
set tabstop=2
set termguicolors
set timeoutlen=1000 ttimeoutlen=0
set wildmenu

" Vim-Plug-Setting
let g:lightline = { 'colorscheme': 'apprentice' }

" Vim-Plug
call plug#begin('~/.vim/plugged')
  Plug 'itchyny/lightline.vim'

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
call plug#end()

" Vim-colorscheme
colorscheme gruvbox8_hard

" Vim-transparent-bg (comment line below to disable)
hi Normal guibg=NONE ctermbg=NONE

" Vim-Keymaps
let g:mapleader = ' '

nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

nnoremap H ^
nnoremap L $
nnoremap Y y$

nnoremap <silent> cd :lcd %:h<CR>
nnoremap <silent> <C-n> :Ex<CR>

nnoremap <silent> <C-t> :tabnew<CR>
nnoremap <silent> <leader>tc :tabnew<CR>:lcd ~/Code/<CR>
nnoremap <silent> <leader>td :tabnew<CR>:lcd ~/.dotfiles2/<CR>

nnoremap <silent> <C-c> :tabclose<CR>
nnoremap <silent> <C-h> :tabprevious<CR>
nnoremap <silent> <C-l> :tabnext<CR>

nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
