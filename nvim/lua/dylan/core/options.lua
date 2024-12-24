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
vim.opt.hlsearch = false
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- Page view.
vim.opt.wrap = false
vim.opt.scrolloff = 5

-- Colors.
vim.opt.background = "dark"
vim.opt.termguicolors = true

-- Window splits.
vim.opt.splitright = true
vim.opt.splitbelow = true

-- File actions.
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true

-- Status line.
vim.opt.ruler = true
vim.opt.showcmd = true
vim.opt.wildmenu = true

-- Others.
vim.opt.history = 1000
vim.opt.backspace = "indent,eol,start"
vim.opt.clipboard = "unnamedplus"
vim.opt.signcolumn = "yes"

-- Highlight when yanking (copying) text.
-- Try it with `yap` in normal mode. See `:help vim.highlight.on_yank()`.
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
