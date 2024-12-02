-- Show line number.
vim.opt.number = true

-- Show line number relative to your cursor.
vim.opt.relativenumber = true

-- Number of lines to keep above and below cursor.
vim.opt.scrolloff = 5

-- Use spaces to insert a tab.
vim.opt.expandtab = true

-- Number of spaces to add for a tab.
vim.opt.tabstop = 2

-- Number of spaces that a tab counts while performing editing operations.
vim.opt.softtabstop = 2

-- Number of spaces for indent width.
vim.opt.shiftwidth = 2

-- Use indentation from current line to the next line.
vim.opt.autoindent = true

-- Use indentation for a new line based on the previous line.
vim.opt.smartindent = true

-- Do not highlight search results.
vim.opt.hlsearch = false

-- Ignore case (lower and upper) when searching.
vim.opt.ignorecase = true

-- Ignore 'ignorecase' setting if search contains a mix of lower and upper case letters.
vim.opt.smartcase = true

-- Prevent line breaking.
vim.opt.wrap = false

-- Use terminal colors.
vim.opt.termguicolors = true

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

-- Use dark mode for color theme.
vim.opt.background = "dark"

-- Show the cursor position.
vim.opt.ruler = true

-- Show incomplete commands.
vim.opt.showcmd = true

-- Show a menu when using tab completion.
vim.opt.wildmenu = true

-- Keep 1000 items in the history.
vim.opt.history = 1000

-- Check word spelling.
--vim.opt.spell = true
--vim.opt.spelllang = "en_us"

-- Highlight when yanking (copying) text.
-- Try it with `yap` in normal mode. See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

