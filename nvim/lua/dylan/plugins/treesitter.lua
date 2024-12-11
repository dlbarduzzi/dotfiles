return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require("nvim-ts-autotag").setup()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      ensure_installed = {
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
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "prisma",
        "python",
        "regex",
        "sql",
        "terraform",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          node_decremental = "bs",
          scope_incremental = false,
        },
      },
    })
    -- Register additional file extensions.
    vim.filetype.add({ extension = { tf = "terraform" } })
    vim.filetype.add({ extension = { tfvars = "terraform" } })
    vim.filetype.add({ extension = { mdx = "markdown" } })
  end,
}
