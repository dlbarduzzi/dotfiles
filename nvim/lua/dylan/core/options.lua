local set = vim.opt

-- Line numbers.
set.number = true
set.relativenumber = true

-- Tab size.
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2

-- Tab indentation.
set.expandtab = true
set.autoindent = true
set.smartindent = true

-- Search.
set.hlsearch = false
set.smartcase = true
set.ignorecase = true

-- Page view.
set.wrap = false
set.scrolloff = 5

-- Colors.
set.background = "dark"
set.termguicolors = true

-- Window splits.
set.splitright = true
set.splitbelow = true

-- File actions.
set.backup = false
set.swapfile = false
set.undofile = true

-- Status line.
set.ruler = true
set.showcmd = true
set.wildmenu = true

-- Others.
set.history = 1000
set.backspace = "indent,eol,start"
set.clipboard = "unnamedplus"
set.signcolumn = "yes"
set.updatetime = 300

-- Highlight when yanking (copying) text.
-- Try it with `yap` in normal mode. See `:help vim.highlight.on_yank()`.
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("dylan-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
