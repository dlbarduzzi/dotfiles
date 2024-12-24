" Line numbers.
set number
set relativenumber

" Tab size.
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Tab indentation.
set expandtab
set autoindent
set smartindent
filetype plugin indent on

" Search.
set nohlsearch
set smartcase
set ignorecase

" Page view.
set nowrap
set scrolloff=5

" Colors.
set background=dark
set termguicolors

" Window splits.
set splitright
set splitbelow

" File actions.
set nobackup
set noswapfile
set undofile

" Status line.
set ruler
set showcmd
set wildmenu

" Others.
set history=1000
set backspace="indent,eol,start"
set clipboard="unnamedplus"
set signcolumn=no

" ---------------------------------------------------------------------------------------
" Keymaps
" ---------------------------------------------------------------------------------------

" Set map leaders.
let mapleader = " "
let maplocalleader = " "

" Exit insert mode with jk.
inoremap jk <ESC>

" Increment and decrement numbers
nnoremap <leader>+ <C-a>
nnoremap <leader>- <C-x>

" Window splits
nnoremap <leader>ss <C-w>v         " Split window vertically
nnoremap <leader>sh <C-w>s         " Split window horizontally
nnoremap <leader>se <C-w>=         " Make splitted windows same size
nnoremap <leader>sx <cmd>close<CR> " Close current split

" Tabs
nnoremap <leader>tt <cmd>tabnew<CR>   " Open new tab
nnoremap <leader>tx <cmd>tabclose<CR> " Close current tab
nnoremap <leader>tn <cmd>tabn<CR>     " Go to next tab
nnoremap <leader>tp <cmd>tabp<CR>     " Go to previous tab
nnoremap <leader>tb <cmd>tabnew %<CR> " Open current buffer in new tab
