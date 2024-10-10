-- Show file explorer tree format 
vim.cmd("let g:netrw_liststyle = 3")

-- Show absolute line number
vim.opt.number = true

-- Show line number relative to cursor 
vim.opt.relativenumber = true

-- Use 2 spaces tabs
vim.opt.tabstop = 2

-- Use 2 spaces for indent width
vim.opt.shiftwidth = 2

-- Use spaces instead of tabs when expanding
vim.opt.expandtab = true

-- Use indentation from current line to next line
vim.opt.autoindent = true

-- Prevent line wrapping
vim.opt.wrap = false

-- Ignore case when searching
vim.opt.ignorecase = true

-- Use case-sensitive search if you mix case in your search (i.e. thisIsMixed, thisisnotmixed) 
vim.opt.smartcase = true

-- Highlight cursor line 
vim.opt.cursorline = true

-- Use terminal colors
vim.termguicolors = true

-- Use dark mode by default for color schemes that support light and dark
vim.opt.background = "dark"

-- Keep sign column on
vim.opt.signcolumn = "yes"

-- Allow backspace on indent, end of line, or insert mode start position
vim.opt.backspace = "indent,eol,start"

-- Use system clipboard as default register
vim.opt.clipboard:append("unnamedplus")

-- Split window vertically
vim.opt.splitright = true

-- Split window horizontally if window is already split
vim.opt.splitbelow = true
