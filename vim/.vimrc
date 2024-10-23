" Show absolute line number.
set number

" Show line number relative to cursor.
set relativenumber

" Number of spaces for tabs.
set tabstop=2

" Number of spaces that a tab counts for while performing editing operations.
set softtabstop=2

" Number of spaces for indent width.
set shiftwidth=2

" Use spaces instead of tabs when expanding.
set expandtab

" Use indentation from current line to next line.
set autoindent

" Use smar indentation when starting a new line.
set smartindent

" Prevent line wrapping.
set nowrap

" Set highlight on search.
set nohlsearch

" Ignore case when searching.
set ignorecase

" Use case-sensitive search if you mix case in your search (i.e. thisIsMixed, thisisnotmixed).
set smartcase

" Highlight cursor line.
set cursorline

" Use terminal colors.
set termguicolors

" Vertical space between top and bottom lines.
set scrolloff=8

" Use dark mode by default for color schemes that support light and dark.
set background="dark"

" Keep sign column on.
set signcolumn="yes"

" Allow backspace on indent, end of line, or insert mode start position.
set backspace="indent,eol,start"

" Use system clipboard as default register.
set clipboard="unnamedplus"

" Split window vertically.
set splitright

" Split window horizontally if window is already split.
set splitbelow

" Prevent creation of a swap file.
set noswapfile

" Prevents the creation of a backup file.
set nobackup

" Save undo history.
set undofile

" Decrease update time.
set updatetime=250

"
" Keymaps
"

" Set map leaders
let mapleader = " "
let maplocalleader = " "

" Exit insert mode with jk
inoremap jk <ESC>

" Run command `:Explore`
nnoremap <leader>ex :Explore<CR>

" Clear search highlights
nnoremap <leader>nh :nohl<CR>

" Increment and decrement numbers
nnoremap <leader>+ <C-a>
nnoremap <leader>- <C-x>

" Split window vertically
nnoremap <leader>sv <C-w>v

" Split window horizontally
nnoremap <leader>sh <C-w>s

" Make splitted windows same size
nnoremap <leader>se <C-w>=

" Close current split
nnoremap <leader>sx <cmd>close<CR>

" Open new tab
nnoremap <leader>to <cmd>tabnew<CR>

" Close current tab
nnoremap <leader>tx <cmd>tabclose<CR>

" Go to next tab
nnoremap <leader>tn <cmd>tabn<CR>

" Go to previous tab
nnoremap <leader>tp <cmd>tabp<CR>

" Open current buffer in new tab
nnoremap <leader>tf <cmd>tabnew %<CR>

