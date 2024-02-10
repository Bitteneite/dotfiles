" Plugin Loading
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'		"Start page
Plug 'jdhao/better-escape.vim'	"Remaps Esc key -> jk
Plug 'junegunn/goyo.vim'		"Removes Line numbers for focusing
Plug 'godlygeek/tabular'		"Auto formatting
Plug 'plasticboy/vim-markdown'	"Markdown syntax highlighting
Plug 'psliwka/vim-smoothie'		"Smooth scrolling
Plug 'ayu-theme/ayu-vim' " or other package manager
call plug#end()

" Startup Settings
syntax on						"Syntax Coloring
"set mouse=a					"Allows mouse usage.
set noerrorbells				"No more annoying error sound
set tabstop=4 softtabstop=4		"Bigger tab key
set shiftwidth=4
set linespace=4
set smartindent
set nu							"Line Numbering
set relativenumber				"Relative Numbering
set ignorecase					"Searching stuff
set smartcase
set incsearch
"set noswapfile					"Swapfile stuff
"set nobackup
set undodir=~/vimfiles/tmp_undo	"Undo stuff
set undofile
set clipboard=unnamed			"Copying stuff



" Theme:

set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" IndentLine {{
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}


" Remap:
let mapleader = " "
nnoremap <leader>so :source ~/.vimrc<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>go :Goyo<CR>



