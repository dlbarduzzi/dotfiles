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
  { import = "dylan.plugins.mini" },
  { import = "dylan.plugins.telescope" },
  { import = "dylan.plugins.lualine" },
  { import = "dylan.plugins.treesitter" },
  { import = "dylan.plugins.completion" },
  { import = "dylan.plugins.lsp" },
  { import = "dylan.plugins.formatting" },
  { import = "dylan.plugins.lint" },
  { import = "dylan.plugins.autopairs" },
  { import = "dylan.plugins.oil" },
  { import = "dylan.plugins.dressing" },
  { import = "dylan.plugins.which-key" },
}, {
  checker = {
    notify = false,
    enabled = true,
  },
  change_detection = {
    notify = false,
  },
})
