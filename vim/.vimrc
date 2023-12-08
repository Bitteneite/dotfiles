" Settings:
syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set linespace=4
set smartindent
set nowrap
set nu
set relativenumber
set smartcase
"set noswapfile
"set nobackup
set undodir=~/vimfiles/tmp_undo
set undofile
set incsearch
set clipboard=unnamed
"set guifont=Consolas:h16:cANSI

" Plugins:
call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-gruvbox8'
Plug 'szw/vim-maximizer'
Plug 'xolox/vim-shell'
Plug 'xolox/vim-misc'
Plug 'vim-airline/vim-airline'
Plug 'lilydjwg/colorizer'
call plug#end()

" Theme:
" colorscheme gruvbox8

" Remap:
let mapleader = " "
nnoremap <leader>so :source ~/.vimrc<CR>
nnoremap <leader>av :e ~/.vimrc<CR>
nnoremap <leader>tn :tabnew<CR>

