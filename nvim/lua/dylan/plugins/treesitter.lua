return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
      auto_install = true,
      ensure_installed = {
        "bash",
        "css",
        "dockerfile",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "make",
        "markdown",
        "prisma",
        "python",
        "terraform",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    })
  end
}
