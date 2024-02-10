" Plugin Loading
call plug#begin('~/.vim/plugged')
Plug 'jdhao/better-escape.vim' "remaps esc key to jj
Plug 'junegunn/goyo.vim' "Removes Line numbers for focusing
Plug 'godlygeek/tabular' "Auto formatting
Plug 'plasticboy/vim-markdown' "Markdown syntax highlighting
Plug 'ryanoasis/vim-devicons' "Cool icons for nerd tree
Plug 'psliwka/vim-smoothie'
call plug#end()

" Startup Settings
syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set linespace=4
set smartindent
set nu
set relativenumber
set smartcase
"set noswapfile
"set nobackup
set undodir=~/vimfiles/tmp_undo
set undofile
set incsearch
set clipboard=unnamed



" Theme:

" Remap:
let mapleader = " "
nnoremap <leader>so :source ~/.vimrc<CR>
nnoremap <leader>av :e ~/.vimrc<CR>
nnoremap <leader>tn :tabnew<CR>

