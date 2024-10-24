local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
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

require("lazy").setup(
-- Plugins
{
  { import = "dylan.plugins.nvimtree" },
  { import = "dylan.plugins.colortheme" },
  { import = "dylan.plugins.bufferline" },
  { import = "dylan.plugins.lualine" },
  { import = "dylan.plugins.treesitter" },
  { import = "dylan.plugins.telescope" },
  { import = "dylan.plugins.lsp" },
},
-- Options
{
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	}
})
