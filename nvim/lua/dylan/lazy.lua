local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--branch=stable",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "dylan.plugins.colorscheme" },
  { import = "dylan.plugins.which-key" },
  { import = "dylan.plugins.lualine" },
  { import = "dylan.plugins.nvim-tree" },
  { import = "dylan.plugins.telescope" },
  { import = "dylan.plugins.autopairs" },
  { import = "dylan.plugins.dressing" },
  { import = "dylan.plugins.gitsigns" },
  { import = "dylan.plugins.todo-comments" },
  { import = "dylan.plugins.lazydev" },
  { import = "dylan.plugins.alpha" },
  { import = "dylan.plugins.tmux-navigator" },
  { import = "dylan.plugins.treesitter" },
  { import = "dylan.plugins.completion" },
  { import = "dylan.plugins.lsp" },
  { import = "dylan.plugins.formatting" },
  { import = "dylan.plugins.lint" },
}, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
