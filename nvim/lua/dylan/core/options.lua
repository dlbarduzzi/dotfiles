-- Show absolute line number.
vim.opt.number = true

-- Show line number relative to cursor.
vim.opt.relativenumber = true

-- Number of spaces for tabs.
vim.opt.tabstop = 2

-- Number of spaces that a tab counts for while performing editing operations.
vim.opt.softtabstop = 2

-- Number of spaces for indent width.
vim.opt.shiftwidth = 2

-- Use spaces instead of tabs when expanding.
vim.opt.expandtab = true

-- Use indentation from current line to next line.
vim.opt.autoindent = true

-- Use smar indentation when starting a new line.
vim.opt.smartindent = true

-- Prevent line wrapping.
vim.opt.wrap = false

-- Set highlight on search.
vim.opt.hlsearch = false

-- Ignore case when searching.
vim.opt.ignorecase = true

-- Use case-sensitive search if you mix case in your search (i.e. thisIsMixed, thisisnotmixed).
vim.opt.smartcase = true

-- Use terminal colors.
vim.termguicolors = true

-- Vertical space between top and bottom lines.
vim.opt.scrolloff = 8

-- Use dark mode by default for color schemes that support light and dark.
vim.opt.background = "dark"

-- Keep sign column on.
vim.opt.signcolumn = "yes"

-- Allow backspace on indent, end of line, or insert mode start position.
vim.opt.backspace = "indent,eol,start"

-- Use system clipboard as default register.
vim.opt.clipboard = "unnamedplus"

-- Split window vertically.
vim.opt.splitright = true

-- Split window horizontally if window is already split.
vim.opt.splitbelow = true

-- Prevent creation of a swap file.
vim.opt.swapfile = false

-- Prevents the creation of a backup file.
vim.opt.backup = false

-- Save undo history.
vim.opt.undofile = true
