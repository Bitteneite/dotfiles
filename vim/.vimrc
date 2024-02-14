" Plugin Loading
call plug#begin('~/.vim/plugged')
Plug 'jdhao/better-escape.vim'	"Remaps Esc key -> jk
Plug 'junegunn/goyo.vim'		"Removes Line numbers for focusing
Plug 'godlygeek/tabular'		"Auto formatting
Plug 'psliwka/vim-smoothie'		"Smooth scrolling
Plug 'Yggdroot/indentLine'		"Indent line
Plug 'takac/vim-hardtime'		"Reduce HJKL usage
Plug 'danth/pathfinder.vim'		"Movement Suggestions
call plug#end()

" Startup Settings
syntax on						"Syntax Coloring
"set mouse=a					"Allows mouse usage.
set noerrorbells				"No more annoying error sound
set tabstop=4 softtabstop=4		"Bigger tab key
set shiftwidth=4				
set linespace=4
set smartindent					"Indentation
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
let g:hardtime_default_on = 1	"Reduce HJKL usage by default


" Theme:
colorscheme elflord

" Remap:
let mapleader = " "
nnoremap <leader>so :source $MYVIMRC<CR>
nnoremap <leader>av :e $MYVIMRC<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>go :Goyo<CR>
noremap <leader>pe :PathfinderExplain<CR>


