return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = { "windwp/nvim-ts-autotag" },
  config = function()
    require("nvim-ts-autotag").setup()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      sync_install = false,
      ignore_install = {},
      modules = {},
      indent = {
        enable = true,
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      ensure_installed = {
        -- Required parsers.
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        -- Other parsers.
        "bash",
        "cmake",
        "css",
        "dockerfile",
        "gitignore",
        "go",
        "graphql",
        "groovy",
        "html",
        "java",
        "javascript",
        "json",
        "make",
        "prisma",
        "python",
        "regex",
        "sql",
        "terraform",
        "toml",
        "tsx",
        "typescript",
        "yaml",
      },
    })
    -- Register additional file extensions.
    vim.filetype.add({ extension = { mdx = "markdown" } })
    vim.filetype.add({ extension = { tf = "terraform" } })
    vim.filetype.add({ extension = { tfvars = "terraform" } })
  end,
}
