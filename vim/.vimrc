" Show line number.
set number

" Show line number relative to your cursor.
set relativenumber

" Number of lines to keep above and below cursor.
set scrolloff=5

" Use spaces to insert a tab.
set expandtab

" Number of spaces to add for a tab.
set tabstop=2

" Number of spaces that a tab counts while performing editing operations.
set softtabstop=2

" Number of spaces for indent width.
set shiftwidth=2

" Use indentation from current line to the next line.
set autoindent

" Use indentation for a new line based on the previous line.
set smartindent

" Do not highlight search results.
set nohlsearch

" Ignore case (lower and upper) when searching.
set ignorecase

" Ignore 'ignorecase' setting if search contains a mix of lower and uppper case letters. 
set smartcase

" Prevent line breaking.
set nowrap

" Use terminal colors.
set termguicolors

" Keep sign column on.
set signcolumn=no

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

" Use dark mode for color theme.
set background=dark

" Show the cursor position.
set ruler

" Show incomplete commands.
set showcmd

" Show a menu when using tab completion.
set wildmenu

" Keep 1000 items in the history.
set history=1000

" ---------------------------------------------------------------------------------------
" Keymaps
" ---------------------------------------------------------------------------------------

" Set map leaders
let mapleader = " "
let maplocalleader = " "

" Exit insert mode with jk
inoremap jk <ESC>

" Clear search highlights
nnoremap <leader>nh :nohl<CR>

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
